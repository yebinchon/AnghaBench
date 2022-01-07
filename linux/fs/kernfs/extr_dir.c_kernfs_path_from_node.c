
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 int kernfs_path_from_node_locked (struct kernfs_node*,struct kernfs_node*,char*,size_t) ;
 int kernfs_rename_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int kernfs_path_from_node(struct kernfs_node *to, struct kernfs_node *from,
     char *buf, size_t buflen)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&kernfs_rename_lock, flags);
 ret = kernfs_path_from_node_locked(to, from, buf, buflen);
 spin_unlock_irqrestore(&kernfs_rename_lock, flags);
 return ret;
}
