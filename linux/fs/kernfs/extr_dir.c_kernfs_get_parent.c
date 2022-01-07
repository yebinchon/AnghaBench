
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {struct kernfs_node* parent; } ;


 int kernfs_get (struct kernfs_node*) ;
 int kernfs_rename_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct kernfs_node *kernfs_get_parent(struct kernfs_node *kn)
{
 struct kernfs_node *parent;
 unsigned long flags;

 spin_lock_irqsave(&kernfs_rename_lock, flags);
 parent = kn->parent;
 kernfs_get(parent);
 spin_unlock_irqrestore(&kernfs_rename_lock, flags);

 return parent;
}
