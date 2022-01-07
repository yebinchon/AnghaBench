
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_fasync; struct file* fl_file; } ;
struct file {int dummy; } ;
struct fasync_struct {int fa_fd; } ;


 int PIDTYPE_TGID ;
 int __f_setown (struct file*,int ,int ,int ) ;
 int current ;
 int fasync_insert_entry (int ,struct file*,int *,struct fasync_struct*) ;
 int task_pid (int ) ;

__attribute__((used)) static void
lease_setup(struct file_lock *fl, void **priv)
{
 struct file *filp = fl->fl_file;
 struct fasync_struct *fa = *priv;






 if (!fasync_insert_entry(fa->fa_fd, filp, &fl->fl_fasync, fa))
  *priv = ((void*)0);

 __f_setown(filp, task_pid(current), PIDTYPE_TGID, 0);
}
