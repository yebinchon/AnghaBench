
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;
typedef scalar_t__ futex_t ;


 scalar_t__ EWOULDBLOCK ;
 scalar_t__ FUTEX_INITIALIZER ;
 int FUTEX_PRIVATE_FLAG ;
 int RET_FAIL ;
 int RET_PASS ;
 int TEST_NAME ;
 int atoi (int ) ;
 int basename (char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fail (char*,scalar_t__,char*) ;
 int futex_wait (scalar_t__*,scalar_t__,struct timespec*,int ) ;
 int getopt (int,char**,char*) ;
 int info (char*,scalar_t__,scalar_t__*,scalar_t__) ;
 int ksft_print_header () ;
 int ksft_print_msg (char*,int ) ;
 int ksft_set_plan (int) ;
 int log_color (int) ;
 int log_verbosity (int ) ;
 int optarg ;
 int print_result (int ,int) ;
 char* strerror (scalar_t__) ;
 int timeout_ns ;
 int usage (int ) ;

int main(int argc, char *argv[])
{
 struct timespec to = {.tv_sec = 0, .tv_nsec = timeout_ns};
 futex_t f1 = FUTEX_INITIALIZER;
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
 ksft_print_msg("%s: Test the unexpected futex value in FUTEX_WAIT\n",
        basename(argv[0]));

 info("Calling futex_wait on f1: %u @ %p with val=%u\n", f1, &f1, f1+1);
 res = futex_wait(&f1, f1+1, &to, FUTEX_PRIVATE_FLAG);
 if (!res || errno != EWOULDBLOCK) {
  fail("futex_wait returned: %d %s\n",
       res ? errno : res, res ? strerror(errno) : "");
  ret = RET_FAIL;
 }

 print_result(TEST_NAME, ret);
 return ret;
}
