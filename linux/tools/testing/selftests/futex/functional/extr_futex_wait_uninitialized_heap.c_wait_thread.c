
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EWOULDBLOCK ;
 int RET_ERROR ;
 int RET_PASS ;
 int buf ;
 scalar_t__ child_blocked ;
 int child_ret ;
 scalar_t__ errno ;
 int error (char*,scalar_t__) ;
 int futex_wait (int ,int,int *,int ) ;
 int pthread_exit (int *) ;

void *wait_thread(void *arg)
{
 int res;

 child_ret = RET_PASS;
 res = futex_wait(buf, 1, ((void*)0), 0);
 child_blocked = 0;

 if (res != 0 && errno != EWOULDBLOCK) {
  error("futex failure\n", errno);
  child_ret = RET_ERROR;
 }
 pthread_exit(((void*)0));
}
