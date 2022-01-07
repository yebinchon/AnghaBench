
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_ct_helper_expectfn {int head; } ;


 int list_add_rcu (int *,int *) ;
 int nf_conntrack_expect_lock ;
 int nf_ct_helper_expectfn_list ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void nf_ct_helper_expectfn_register(struct nf_ct_helper_expectfn *n)
{
 spin_lock_bh(&nf_conntrack_expect_lock);
 list_add_rcu(&n->head, &nf_ct_helper_expectfn_list);
 spin_unlock_bh(&nf_conntrack_expect_lock);
}
