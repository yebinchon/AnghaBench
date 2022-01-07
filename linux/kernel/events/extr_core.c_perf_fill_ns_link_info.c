
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct proc_ns_operations {int dummy; } ;
struct perf_ns_link_info {int ino; int dev; } ;
struct path {TYPE_1__* dentry; } ;
struct inode {int i_ino; TYPE_2__* i_sb; } ;
struct TYPE_4__ {int s_dev; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int new_encode_dev (int ) ;
 void* ns_get_path (struct path*,struct task_struct*,struct proc_ns_operations const*) ;
 int path_put (struct path*) ;

__attribute__((used)) static void perf_fill_ns_link_info(struct perf_ns_link_info *ns_link_info,
       struct task_struct *task,
       const struct proc_ns_operations *ns_ops)
{
 struct path ns_path;
 struct inode *ns_inode;
 void *error;

 error = ns_get_path(&ns_path, task, ns_ops);
 if (!error) {
  ns_inode = ns_path.dentry->d_inode;
  ns_link_info->dev = new_encode_dev(ns_inode->i_sb->s_dev);
  ns_link_info->ino = ns_inode->i_ino;
  path_put(&ns_path);
 }
}
