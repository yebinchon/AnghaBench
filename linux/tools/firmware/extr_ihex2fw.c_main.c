
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct stat {int st_size; } ;


 int * MAP_FAILED ;
 int MAP_SHARED ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PROT_READ ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt (int,char**,char*) ;
 int include_jump ;
 int * mmap (int *,int ,int ,int ,int,int ) ;
 int open (char*,int,...) ;
 int optind ;
 int output_records (int) ;
 int perror (char*) ;
 scalar_t__ process_ihex (int *,int ) ;
 int sort_records ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* strerror (int ) ;
 int usage () ;
 int wide_records ;

int main(int argc, char **argv)
{
 int infd, outfd;
 struct stat st;
 uint8_t *data;
 int opt;

 while ((opt = getopt(argc, argv, "wsj")) != -1) {
  switch (opt) {
  case 'w':
   wide_records = 1;
   break;
  case 's':
   sort_records = 1;
   break;
  case 'j':
   include_jump = 1;
   break;
  default:
   return usage();
  }
 }

 if (optind + 2 != argc)
  return usage();

 if (!strcmp(argv[optind], "-"))
  infd = 0;
 else
  infd = open(argv[optind], O_RDONLY);
 if (infd == -1) {
  fprintf(stderr, "Failed to open source file: %s",
   strerror(errno));
  return usage();
 }
 if (fstat(infd, &st)) {
  perror("stat");
  return 1;
 }
 data = mmap(((void*)0), st.st_size, PROT_READ, MAP_SHARED, infd, 0);
 if (data == MAP_FAILED) {
  perror("mmap");
  return 1;
 }

 if (!strcmp(argv[optind+1], "-"))
  outfd = 1;
 else
  outfd = open(argv[optind+1], O_TRUNC|O_CREAT|O_WRONLY, 0644);
 if (outfd == -1) {
  fprintf(stderr, "Failed to open destination file: %s",
   strerror(errno));
  return usage();
 }
 if (process_ihex(data, st.st_size))
  return 1;

 return output_records(outfd);
}
