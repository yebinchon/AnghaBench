
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_proxy {int label; int count; } ;
struct aa_label {int dummy; } ;
typedef int gfp_t ;


 int aa_get_label (struct aa_label*) ;
 int kref_init (int *) ;
 struct aa_proxy* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,int ) ;

struct aa_proxy *aa_alloc_proxy(struct aa_label *label, gfp_t gfp)
{
 struct aa_proxy *new;

 new = kzalloc(sizeof(struct aa_proxy), gfp);
 if (new) {
  kref_init(&new->count);
  rcu_assign_pointer(new->label, aa_get_label(label));
 }
 return new;
}
