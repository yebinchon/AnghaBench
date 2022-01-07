
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pid; } ;
struct TYPE_4__ {int stop; TYPE_1__ info; } ;


 int EFAULT ;
 scalar_t__ __bpfilter_process_sockopt (int *,int ,int *,int ,int ) ;
 TYPE_2__ bpfilter_ops ;
 int bpfilter_umh_end ;
 int bpfilter_umh_start ;
 int fork_usermode_blob (int *,int,TYPE_1__*) ;
 int pr_info (char*,int ) ;
 int shutdown_umh () ;

__attribute__((used)) static int start_umh(void)
{
 int err;


 err = fork_usermode_blob(&bpfilter_umh_start,
     &bpfilter_umh_end - &bpfilter_umh_start,
     &bpfilter_ops.info);
 if (err)
  return err;
 bpfilter_ops.stop = 0;
 pr_info("Loaded bpfilter_umh pid %d\n", bpfilter_ops.info.pid);


 if (__bpfilter_process_sockopt(((void*)0), 0, ((void*)0), 0, 0) != 0) {
  shutdown_umh();
  return -EFAULT;
 }

 return 0;
}
