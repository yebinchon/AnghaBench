
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nilfs_sc_info {int * sc_task; int sc_wait_task; int sc_super; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int KERN_ERR ;
 int PTR_ERR (struct task_struct*) ;
 struct task_struct* kthread_run (int ,struct nilfs_sc_info*,char*) ;
 int nilfs_msg (int ,int ,char*,int) ;
 int nilfs_segctor_thread ;
 int wait_event (int ,int ) ;

__attribute__((used)) static int nilfs_segctor_start_thread(struct nilfs_sc_info *sci)
{
 struct task_struct *t;

 t = kthread_run(nilfs_segctor_thread, sci, "segctord");
 if (IS_ERR(t)) {
  int err = PTR_ERR(t);

  nilfs_msg(sci->sc_super, KERN_ERR,
     "error %d creating segctord thread", err);
  return err;
 }
 wait_event(sci->sc_wait_task, sci->sc_task != ((void*)0));
 return 0;
}
