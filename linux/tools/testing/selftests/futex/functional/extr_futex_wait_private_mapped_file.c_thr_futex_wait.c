
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ETIMEDOUT ;
 scalar_t__ EWOULDBLOCK ;
 int RET_ERROR ;
 int TEST_NAME ;
 scalar_t__ errno ;
 int error (char*,scalar_t__) ;
 int exit (int ) ;
 int fail (char*) ;
 int futex_wait (int *,int,int *,int ) ;
 int info (char*,...) ;
 int print_result (int ,int ) ;
 int val ;
 int wait_timeout ;

void *thr_futex_wait(void *arg)
{
 int ret;

 info("futex wait\n");
 ret = futex_wait(&val, 1, &wait_timeout, 0);
 if (ret && errno != EWOULDBLOCK && errno != ETIMEDOUT) {
  error("futex error.\n", errno);
  print_result(TEST_NAME, RET_ERROR);
  exit(RET_ERROR);
 }

 if (ret && errno == ETIMEDOUT)
  fail("waiter timedout\n");

 info("futex_wait: ret = %d, errno = %d\n", ret, errno);

 return ((void*)0);
}
