
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_label {int dummy; } ;
struct aa_file_ctx {int lock; int allow; int label; } ;


 int GFP_ATOMIC ;
 struct aa_label* aa_label_merge (struct aa_label*,struct aa_label*,int ) ;
 int aa_put_label (struct aa_label*) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct aa_label*) ;
 struct aa_label* rcu_dereference_protected (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void update_file_ctx(struct aa_file_ctx *fctx, struct aa_label *label,
       u32 request)
{
 struct aa_label *l, *old;


 spin_lock(&fctx->lock);
 old = rcu_dereference_protected(fctx->label,
     lockdep_is_held(&fctx->lock));
 l = aa_label_merge(old, label, GFP_ATOMIC);
 if (l) {
  if (l != old) {
   rcu_assign_pointer(fctx->label, l);
   aa_put_label(old);
  } else
   aa_put_label(l);
  fctx->allow |= request;
 }
 spin_unlock(&fctx->lock);
}
