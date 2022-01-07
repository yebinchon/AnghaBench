
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_NAME ;
 int atoi (int ) ;
 int basename (char*) ;
 int broadcast ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int ksft_print_header () ;
 int ksft_print_msg (char*,int,...) ;
 int ksft_set_plan (int) ;
 int locked ;
 int log_color (int) ;
 int log_verbosity (int ) ;
 int optarg ;
 int owner ;
 int print_result (int ,int) ;
 int timeout_ns ;
 int unit_test (int,int,int,int ) ;
 int usage (int ) ;

int main(int argc, char *argv[])
{
 int c, ret;

 while ((c = getopt(argc, argv, "bchlot:v:")) != -1) {
  switch (c) {
  case 'b':
   broadcast = 1;
   break;
  case 'c':
   log_color(1);
   break;
  case 'h':
   usage(basename(argv[0]));
   exit(0);
  case 'l':
   locked = 1;
   break;
  case 'o':
   owner = 1;
   locked = 0;
   break;
  case 't':
   timeout_ns = atoi(optarg);
   break;
  case 'v':
   log_verbosity(atoi(optarg));
   break;
  default:
   usage(basename(argv[0]));
   exit(1);
  }
 }

 ksft_print_header();
 ksft_set_plan(1);
 ksft_print_msg("%s: Test requeue functionality\n", basename(argv[0]));
 ksft_print_msg(
  "\tArguments: broadcast=%d locked=%d owner=%d timeout=%ldns\n",
  broadcast, locked, owner, timeout_ns);






 ret = unit_test(broadcast, locked, owner, timeout_ns);

 print_result(TEST_NAME, ret);
 return ret;
}
