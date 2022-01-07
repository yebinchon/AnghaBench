
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int RET_ERROR ;
 int RET_FAIL ;
 int RET_PASS ;
 int TEST_NAME ;
 int WAKE_WAIT_US ;
 int atoi (int ) ;
 int basename (char*) ;
 int exit (int) ;
 int fail (char*) ;
 int fprintf (int ,char*) ;
 int futex_wake (int*,int,int ) ;
 int getopt (int,char**,char*) ;
 int info (char*,...) ;
 int ksft_print_header () ;
 int ksft_print_msg (char*,int ) ;
 int ksft_set_plan (int) ;
 int log_color (int) ;
 int log_verbosity (int ) ;
 int optarg ;
 int print_result (int ,int) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int stderr ;
 int thr_futex_wait ;
 int usage (int ) ;
 int usleep (int ) ;
 int val ;

int main(int argc, char **argv)
{
 pthread_t thr;
 int ret = RET_PASS;
 int res;
 int c;

 while ((c = getopt(argc, argv, "chv:")) != -1) {
  switch (c) {
  case 'c':
   log_color(1);
   break;
  case 'h':
   usage(basename(argv[0]));
   exit(0);
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
 ksft_print_msg(
  "%s: Test the futex value of private file mappings in FUTEX_WAIT\n",
  basename(argv[0]));

 ret = pthread_create(&thr, ((void*)0), thr_futex_wait, ((void*)0));
 if (ret < 0) {
  fprintf(stderr, "pthread_create error\n");
  ret = RET_ERROR;
  goto out;
 }

 info("wait a while\n");
 usleep(WAKE_WAIT_US);
 val = 2;
 res = futex_wake(&val, 1, 0);
 info("futex_wake %d\n", res);
 if (res != 1) {
  fail("FUTEX_WAKE didn't find the waiting thread.\n");
  ret = RET_FAIL;
 }

 info("join\n");
 pthread_join(thr, ((void*)0));

 out:
 print_result(TEST_NAME, ret);
 return ret;
}
