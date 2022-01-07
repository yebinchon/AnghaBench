
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {int flags; TYPE_1__* parent; int active; int name; int rb; } ;
struct kernfs_iattrs {int ia_ctime; int ia_mtime; } ;
struct TYPE_2__ {struct kernfs_iattrs* iattr; } ;


 int KERNFS_ACTIVATED ;
 scalar_t__ KN_DEACTIVATED_BIAS ;
 scalar_t__ RB_EMPTY_NODE (int *) ;
 int WARN_ON_ONCE (int) ;
 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ kernfs_active (struct kernfs_node*) ;
 int kernfs_drain (struct kernfs_node*) ;
 int kernfs_get (struct kernfs_node*) ;
 struct kernfs_node* kernfs_leftmost_descendant (struct kernfs_node*) ;
 int kernfs_mutex ;
 struct kernfs_node* kernfs_next_descendant_post (struct kernfs_node*,struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;
 scalar_t__ kernfs_unlink_sibling (struct kernfs_node*) ;
 int ktime_get_real_ts64 (int *) ;
 int lockdep_assert_held (int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void __kernfs_remove(struct kernfs_node *kn)
{
 struct kernfs_node *pos;

 lockdep_assert_held(&kernfs_mutex);






 if (!kn || (kn->parent && RB_EMPTY_NODE(&kn->rb)))
  return;

 pr_debug("kernfs %s: removing\n", kn->name);


 pos = ((void*)0);
 while ((pos = kernfs_next_descendant_post(pos, kn)))
  if (kernfs_active(pos))
   atomic_add(KN_DEACTIVATED_BIAS, &pos->active);


 do {
  pos = kernfs_leftmost_descendant(kn);







  kernfs_get(pos);







  if (kn->flags & KERNFS_ACTIVATED)
   kernfs_drain(pos);
  else
   WARN_ON_ONCE(atomic_read(&kn->active) != KN_DEACTIVATED_BIAS);





  if (!pos->parent || kernfs_unlink_sibling(pos)) {
   struct kernfs_iattrs *ps_iattr =
    pos->parent ? pos->parent->iattr : ((void*)0);


   if (ps_iattr) {
    ktime_get_real_ts64(&ps_iattr->ia_ctime);
    ps_iattr->ia_mtime = ps_iattr->ia_ctime;
   }

   kernfs_put(pos);
  }

  kernfs_put(pos);
 } while (pos != kn);
}
