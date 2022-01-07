
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_context {int kvmcpu; struct kvm_run* run; } ;
struct TYPE_2__ {int suberror; } ;
struct kvm_run {int exit_reason; TYPE_1__ internal; } ;


 int KVM_RUN ;
 int ioctl (int,int ,int ) ;
 int printf (char*,int,int,int) ;

void *thr(void *arg)
{
 struct thread_context *tc = (struct thread_context *)arg;
 int res;
 int kvmcpu = tc->kvmcpu;
 struct kvm_run *run = tc->run;

 res = ioctl(kvmcpu, KVM_RUN, 0);
 printf("ret1=%d exit_reason=%d suberror=%d\n",
  res, run->exit_reason, run->internal.suberror);

 return 0;
}
