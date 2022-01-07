
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int futex_t ;


 scalar_t__ ETIMEDOUT ;
 int FUTEX_INITIALIZER ;
 int FUTEX_PRIVATE_FLAG ;
 int RET_FAIL ;
 int RET_PASS ;
 int TEST_NAME ;
 int atoi (int ) ;
 int basename (char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fail (char*,scalar_t__) ;
 int futex_wait (int *,int ,struct timespec*,int ) ;
 int getopt (int,char**,char*) ;
 int info (char*,int ,int *) ;
 int ksft_print_header () ;
 int ksft_print_msg (char*,int ) ;
 int ksft_set_plan (int) ;
 int log_color (int) ;
 int log_verbosity (int ) ;
 int optarg ;
 int print_result (int ,int) ;
 int timeout_ns ;
 int usage (int ) ;

int main(int argc, char *argv[])
{
 futex_t f1 = FUTEX_INITIALIZER;
 struct timespec to;
 int res, ret = RET_PASS;
 int c;

 while ((c = getopt(argc, argv, "cht:v:")) != -1) {
  switch (c) {
  case 'c':
   log_color(1);
   break;
  case 'h':
   usage(basename(argv[0]));
   exit(0);
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
 ksft_print_msg("%s: Block on a futex and wait for timeout\n",
        basename(argv[0]));
 ksft_print_msg("\tArguments: timeout=%ldns\n", timeout_ns);


 to.tv_sec = 0;
 to.tv_nsec = timeout_ns;

 info("Calling futex_wait on f1: %u @ %p\n", f1, &f1);
 res = futex_wait(&f1, f1, &to, FUTEX_PRIVATE_FLAG);
 if (!res || errno != ETIMEDOUT) {
  fail("futex_wait returned %d\n", ret < 0 ? errno : ret);
  ret = RET_FAIL;
 }

 print_result(TEST_NAME, ret);
 return ret;
}
