
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ EINVAL ;
 int FUTEX_PRIVATE_FLAG ;
 int RET_ERROR ;
 int RET_FAIL ;
 int RET_PASS ;
 int TEST_NAME ;
 int atoi (int ) ;
 int basename (char*) ;
 int blocking_child ;
 int child_ret ;
 scalar_t__ errno ;
 int error (char*,scalar_t__) ;
 int exit (int) ;
 int f1 ;
 int f2 ;
 int fail (char*) ;
 int futex_cmp_requeue_pi (int *,int ,int *,int,int ,int ) ;
 int futex_wake (int *,int,int ) ;
 int getopt (int,char**,char*) ;
 int ksft_print_header () ;
 int ksft_print_msg (char*,int ) ;
 int ksft_set_plan (int) ;
 int log_color (int) ;
 int log_verbosity (int ) ;
 int optarg ;
 int print_result (int ,int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int sleep (int) ;
 int usage (int ) ;

int main(int argc, char *argv[])
{
 int ret = RET_PASS;
 pthread_t child;
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
 ksft_print_msg("%s: Detect mismatched requeue_pi operations\n",
        basename(argv[0]));

 if (pthread_create(&child, ((void*)0), blocking_child, ((void*)0))) {
  error("pthread_create\n", errno);
  ret = RET_ERROR;
  goto out;
 }

 sleep(1);







 ret = futex_cmp_requeue_pi(&f1, f1, &f2, 1, 0, FUTEX_PRIVATE_FLAG);
 if (ret < 0) {
  if (errno == EINVAL) {





   ret = futex_wake(&f1, 1, FUTEX_PRIVATE_FLAG);
   if (ret == 1) {
    ret = RET_PASS;
   } else if (ret < 0) {
    error("futex_wake\n", errno);
    ret = RET_ERROR;
   } else {
    error("futex_wake did not wake the child\n", 0);
    ret = RET_ERROR;
   }
  } else {
   error("futex_cmp_requeue_pi\n", errno);
   ret = RET_ERROR;
  }
 } else if (ret > 0) {
  fail("futex_cmp_requeue_pi failed to detect the mismatch\n");
  ret = RET_FAIL;
 } else {
  error("futex_cmp_requeue_pi found no waiters\n", 0);
  ret = RET_ERROR;
 }

 pthread_join(child, ((void*)0));

 if (!ret)
  ret = child_ret;

 out:

 print_result(TEST_NAME, ret);
 return ret;
}
