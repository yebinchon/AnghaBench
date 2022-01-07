
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_nat_helper {int list; } ;


 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_nat_helpers ;
 int nf_ct_nat_helpers_mutex ;

void nf_nat_helper_register(struct nf_conntrack_nat_helper *nat)
{
 mutex_lock(&nf_ct_nat_helpers_mutex);
 list_add_rcu(&nat->list, &nf_ct_nat_helpers);
 mutex_unlock(&nf_ct_nat_helpers_mutex);
}
