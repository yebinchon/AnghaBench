
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockmap_options {int sendpage; int drop_expected; int rate; int iov_count; int iov_length; } ;


 int OPTSTRING ;
 int SENDPAGE ;
 char* calloc (int ,int) ;
 int failed ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int passed ;
 int run_options (struct sockmap_options*,int,int) ;
 int stdout ;
 int test_cnt ;
 int test_options (char*) ;
 char* test_to_str (int) ;
 scalar_t__ txmsg_drop ;

__attribute__((used)) static int __test_exec(int cgrp, int test, struct sockmap_options *opt)
{
 char *options = calloc(OPTSTRING, sizeof(char));
 int err;

 if (test == SENDPAGE)
  opt->sendpage = 1;
 else
  opt->sendpage = 0;

 if (txmsg_drop)
  opt->drop_expected = 1;
 else
  opt->drop_expected = 0;

 test_options(options);

 fprintf(stdout,
  "[TEST %i]: (%i, %i, %i, %s, %s): ",
  test_cnt, opt->rate, opt->iov_count, opt->iov_length,
  test_to_str(test), options);
 fflush(stdout);
 err = run_options(opt, cgrp, test);
 fprintf(stdout, "%s\n", !err ? "PASS" : "FAILED");
 test_cnt++;
 !err ? passed++ : failed++;
 free(options);
 return err;
}
