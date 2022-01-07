
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int flags; int active; int rb; scalar_t__ parent; } ;


 int KERNFS_ACTIVATED ;
 scalar_t__ KN_DEACTIVATED_BIAS ;
 scalar_t__ RB_EMPTY_NODE (int *) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (scalar_t__,int *) ;
 int kernfs_mutex ;
 struct kernfs_node* kernfs_next_descendant_post (struct kernfs_node*,struct kernfs_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kernfs_activate(struct kernfs_node *kn)
{
 struct kernfs_node *pos;

 mutex_lock(&kernfs_mutex);

 pos = ((void*)0);
 while ((pos = kernfs_next_descendant_post(pos, kn))) {
  if (!pos || (pos->flags & KERNFS_ACTIVATED))
   continue;

  WARN_ON_ONCE(pos->parent && RB_EMPTY_NODE(&pos->rb));
  WARN_ON_ONCE(atomic_read(&pos->active) != KN_DEACTIVATED_BIAS);

  atomic_sub(KN_DEACTIVATED_BIAS, &pos->active);
  pos->flags |= KERNFS_ACTIVATED;
 }

 mutex_unlock(&kernfs_mutex);
}
