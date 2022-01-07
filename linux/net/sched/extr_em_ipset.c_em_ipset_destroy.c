
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_set_info {int index; } ;
struct tcf_ematch {scalar_t__ data; int net; } ;


 int ip_set_nfnl_put (int ,int ) ;
 int kfree (void*) ;

__attribute__((used)) static void em_ipset_destroy(struct tcf_ematch *em)
{
 const struct xt_set_info *set = (const void *) em->data;
 if (set) {
  ip_set_nfnl_put(em->net, set->index);
  kfree((void *) em->data);
 }
}
