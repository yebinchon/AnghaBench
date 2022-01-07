
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kthread_create_info {int result; int done; int node; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int pref_node_fork; } ;


 int CLONE_FILES ;
 int CLONE_FS ;
 int ERR_PTR (int) ;
 int SIGCHLD ;
 int complete (struct completion*) ;
 TYPE_1__* current ;
 int kernel_thread (int ,struct kthread_create_info*,int) ;
 int kfree (struct kthread_create_info*) ;
 int kthread ;
 struct completion* xchg (int *,int *) ;

__attribute__((used)) static void create_kthread(struct kthread_create_info *create)
{
 int pid;





 pid = kernel_thread(kthread, create, CLONE_FS | CLONE_FILES | SIGCHLD);
 if (pid < 0) {

  struct completion *done = xchg(&create->done, ((void*)0));

  if (!done) {
   kfree(create);
   return;
  }
  create->result = ERR_PTR(pid);
  complete(done);
 }
}
