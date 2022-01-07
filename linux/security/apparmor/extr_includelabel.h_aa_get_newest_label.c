
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_label {TYPE_1__* proxy; } ;
struct TYPE_2__ {int label; } ;


 int AA_BUG (int) ;
 struct aa_label* aa_get_label (struct aa_label*) ;
 struct aa_label* aa_get_label_rcu (int *) ;
 scalar_t__ label_is_stale (struct aa_label*) ;

__attribute__((used)) static inline struct aa_label *aa_get_newest_label(struct aa_label *l)
{
 if (!l)
  return ((void*)0);

 if (label_is_stale(l)) {
  struct aa_label *tmp;

  AA_BUG(!l->proxy);
  AA_BUG(!l->proxy->label);




  tmp = aa_get_label_rcu(&l->proxy->label);
  AA_BUG(!tmp);

  return tmp;
 }

 return aa_get_label(l);
}
