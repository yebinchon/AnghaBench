
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEN ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int decode_psb (char*,int) ;
 int exit (int) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int info_opts ;
 scalar_t__ memcmp (char*,char*,int) ;
 char* mmap (char*,int,int ,int ,int,int) ;
 int munmap (char*,int) ;
 int open (char*,int ) ;
 int optarg ;
 int print_help () ;
 int printf (char*) ;
 void* relevant ;
 void* strtol (int ,int *,int) ;

int
main(int argc, char *argv[])
{
 int fd;
 int numpst=-1;
 int ret=0, cont=1;
 char *mem = ((void*)0);
 char *p;

 do {
  ret = getopt_long(argc, argv, "hr:n:", info_opts, ((void*)0));
  switch (ret){
  case '?':
  case 'h':
   print_help();
   cont = 0;
   break;
  case 'r':
   relevant = strtol(optarg, ((void*)0), 16);
   break;
  case 'n':
   numpst = strtol(optarg, ((void*)0), 10);
   break;
  case -1:
   cont = 0;
   break;
  }

 } while(cont);

 fd = open("/dev/mem", O_RDONLY);
 if (fd < 0) {
  printf ("Couldn't open /dev/mem. Are you root?\n");
  exit(1);
 }

 mem = mmap(mem, 0x100000 - 0xc0000, PROT_READ, MAP_SHARED, fd, 0xc0000);
 close(fd);

 for (p = mem; p - mem < LEN; p+=16) {
  if (memcmp(p, "AMDK7PNOW!", 10) == 0) {
   decode_psb(p, numpst);
   break;
  }
 }

 munmap(mem, LEN);
 return 0;
}
