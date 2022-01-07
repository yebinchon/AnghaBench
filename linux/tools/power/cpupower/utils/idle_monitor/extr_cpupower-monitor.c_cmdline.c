
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (int ) ;
 int basename (char*) ;
 int getopt (int,char**,char*) ;
 int interval ;
 scalar_t__ list ;
 scalar_t__ mode ;
 int optarg ;
 int print_wrong_arg_exit () ;
 int progname ;
 scalar_t__ show ;
 scalar_t__ show_all ;
 int show_monitors_param ;
 int wake_cpus ;

__attribute__((used)) static void cmdline(int argc, char *argv[])
{
 int opt;
 progname = basename(argv[0]);

 while ((opt = getopt(argc, argv, "+lci:m:")) != -1) {
  switch (opt) {
  case 'l':
   if (mode)
    print_wrong_arg_exit();
   mode = list;
   break;
  case 'i':

   if (mode && mode != show)
    print_wrong_arg_exit();
   interval = atoi(optarg);
   break;
  case 'm':
   if (mode)
    print_wrong_arg_exit();
   mode = show;
   show_monitors_param = optarg;
   break;
  case 'c':
   wake_cpus = 1;
   break;
  default:
   print_wrong_arg_exit();
  }
 }
 if (!mode)
  mode = show_all;
}
