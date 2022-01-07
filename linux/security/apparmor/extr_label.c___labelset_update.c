
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int labels; int lock; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 struct aa_label* __label_update (struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;
 struct aa_label* labelset_next_stale (int *) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __labelset_update(struct aa_ns *ns)
{
 struct aa_label *label;

 AA_BUG(!ns);
 AA_BUG(!mutex_is_locked(&ns->lock));

 do {
  label = labelset_next_stale(&ns->labels);
  if (label) {
   struct aa_label *l = __label_update(label);

   aa_put_label(l);
   aa_put_label(label);
  }
 } while (label);
}
