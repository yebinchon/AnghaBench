
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_inode_info {scalar_t__ notify_owner; int lock; } ;
struct file {int dummy; } ;
typedef int fl_owner_t ;


 struct mqueue_inode_info* MQUEUE_I (int ) ;
 int current ;
 int file_inode (struct file*) ;
 int remove_notification (struct mqueue_inode_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ task_tgid (int ) ;

__attribute__((used)) static int mqueue_flush_file(struct file *filp, fl_owner_t id)
{
 struct mqueue_inode_info *info = MQUEUE_I(file_inode(filp));

 spin_lock(&info->lock);
 if (task_tgid(current) == info->notify_owner)
  remove_notification(info);

 spin_unlock(&info->lock);
 return 0;
}
