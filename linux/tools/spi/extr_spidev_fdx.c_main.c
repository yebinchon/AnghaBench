
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int O_RDWR ;
 int atoi (int ) ;
 int close (int) ;
 int do_msg (int,int) ;
 int do_read (int,int) ;
 int dumpstat (char const*,int) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int open (char const*,int ) ;
 int optarg ;
 int optind ;
 int perror (char*) ;
 int stderr ;
 int verbose ;

int main(int argc, char **argv)
{
 int c;
 int readcount = 0;
 int msglen = 0;
 int fd;
 const char *name;

 while ((c = getopt(argc, argv, "hm:r:v")) != EOF) {
  switch (c) {
  case 'm':
   msglen = atoi(optarg);
   if (msglen < 0)
    goto usage;
   continue;
  case 'r':
   readcount = atoi(optarg);
   if (readcount < 0)
    goto usage;
   continue;
  case 'v':
   verbose++;
   continue;
  case 'h':
  case '?':
usage:
   fprintf(stderr,
    "usage: %s [-h] [-m N] [-r N] /dev/spidevB.D\n",
    argv[0]);
   return 1;
  }
 }

 if ((optind + 1) != argc)
  goto usage;
 name = argv[optind];

 fd = open(name, O_RDWR);
 if (fd < 0) {
  perror("open");
  return 1;
 }

 dumpstat(name, fd);

 if (msglen)
  do_msg(fd, msglen);

 if (readcount)
  do_read(fd, readcount);

 close(fd);
 return 0;
}
