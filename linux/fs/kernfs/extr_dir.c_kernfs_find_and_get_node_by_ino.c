
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_root {int ino_idr; } ;
struct TYPE_2__ {unsigned int ino; } ;
struct kernfs_node {TYPE_1__ id; int count; } ;


 int atomic_inc_not_zero (int *) ;
 struct kernfs_node* idr_find (int *,unsigned int) ;
 int kernfs_put (struct kernfs_node*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct kernfs_node *kernfs_find_and_get_node_by_ino(struct kernfs_root *root,
          unsigned int ino)
{
 struct kernfs_node *kn;

 rcu_read_lock();
 kn = idr_find(&root->ino_idr, ino);
 if (!kn)
  goto out;
 if (!atomic_inc_not_zero(&kn->count)) {
  kn = ((void*)0);
  goto out;
 }
 if (kn->id.ino != ino)
  goto out;
 rcu_read_unlock();

 return kn;
out:
 rcu_read_unlock();
 kernfs_put(kn);
 return ((void*)0);
}
