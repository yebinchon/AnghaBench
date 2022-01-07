
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int dump_devices () ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int optind ;
 int stderr ;
 int verblevel ;

int main(int argc, char **argv)
{
 int c, err = 0;

 while ((c = getopt(argc, argv, "v")) != EOF) {
  switch (c) {
  case 'v':
   verblevel++;
   break;

  case '?':
  default:
   err++;
   break;
  }
 }
 if (err || argc > optind) {
  fprintf(stderr, "Usage: lsiio [options]...\n"
   "List industrial I/O devices\n"
   "  -v  Increase verbosity (may be given multiple times)\n");
  exit(1);
 }

 return dump_devices();
}
