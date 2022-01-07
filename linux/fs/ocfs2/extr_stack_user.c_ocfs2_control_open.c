
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_control_private {int op_this_node; int op_list; } ;
struct inode {int dummy; } ;
struct file {struct ocfs2_control_private* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ocfs2_control_private* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_control_lock ;
 int ocfs2_control_private_list ;

__attribute__((used)) static int ocfs2_control_open(struct inode *inode, struct file *file)
{
 struct ocfs2_control_private *p;

 p = kzalloc(sizeof(struct ocfs2_control_private), GFP_KERNEL);
 if (!p)
  return -ENOMEM;
 p->op_this_node = -1;

 mutex_lock(&ocfs2_control_lock);
 file->private_data = p;
 list_add(&p->op_list, &ocfs2_control_private_list);
 mutex_unlock(&ocfs2_control_lock);

 return 0;
}
