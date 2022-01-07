
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_open_node {int refcnt; } ;
struct kernfs_open_file {int list; } ;
struct TYPE_2__ {struct kernfs_open_node* open; } ;
struct kernfs_node {TYPE_1__ attr; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kernfs_open_file_mutex ;
 int kernfs_open_node_lock ;
 int kfree (struct kernfs_open_node*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kernfs_put_open_node(struct kernfs_node *kn,
     struct kernfs_open_file *of)
{
 struct kernfs_open_node *on = kn->attr.open;
 unsigned long flags;

 mutex_lock(&kernfs_open_file_mutex);
 spin_lock_irqsave(&kernfs_open_node_lock, flags);

 if (of)
  list_del(&of->list);

 if (atomic_dec_and_test(&on->refcnt))
  kn->attr.open = ((void*)0);
 else
  on = ((void*)0);

 spin_unlock_irqrestore(&kernfs_open_node_lock, flags);
 mutex_unlock(&kernfs_open_file_mutex);

 kfree(on);
}
