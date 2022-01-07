
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aa_label {int flags; TYPE_1__* proxy; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int label; } ;


 int AA_BUG (int) ;
 int FLAG_STALE ;
 int aa_get_label (struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;
 TYPE_3__* labels_ns (struct aa_label*) ;
 TYPE_2__* labels_set (struct aa_label*) ;
 int lockdep_assert_held_write (int *) ;
 int rcu_assign_pointer (int ,int ) ;
 struct aa_label* rcu_dereference_protected (int ,int *) ;

void __aa_proxy_redirect(struct aa_label *orig, struct aa_label *new)
{
 struct aa_label *tmp;

 AA_BUG(!orig);
 AA_BUG(!new);
 lockdep_assert_held_write(&labels_set(orig)->lock);

 tmp = rcu_dereference_protected(orig->proxy->label,
     &labels_ns(orig)->lock);
 rcu_assign_pointer(orig->proxy->label, aa_get_label(new));
 orig->flags |= FLAG_STALE;
 aa_put_label(tmp);
}
