
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUTEX_PRIVATE_FLAG ;
 int child_ret ;
 int errno ;
 int error (char*,int ) ;
 int f1 ;
 int futex_wait (int *,int ,int *,int ) ;

void *blocking_child(void *arg)
{
 child_ret = futex_wait(&f1, f1, ((void*)0), FUTEX_PRIVATE_FLAG);
 if (child_ret < 0) {
  child_ret = -errno;
  error("futex_wait\n", errno);
 }
 return (void *)&child_ret;
}
