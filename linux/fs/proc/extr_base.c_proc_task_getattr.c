
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;
struct path {int dentry; } ;
struct kstat {int nlink; } ;
struct inode {int dummy; } ;


 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 scalar_t__ get_nr_threads (struct task_struct*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int proc_task_getattr(const struct path *path, struct kstat *stat,
        u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct task_struct *p = get_proc_task(inode);
 generic_fillattr(inode, stat);

 if (p) {
  stat->nlink += get_nr_threads(p);
  put_task_struct(p);
 }

 return 0;
}
