
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {int nat_bysource; TYPE_1__* tuplehash; } ;
struct TYPE_2__ {int tuple; } ;


 unsigned int CONNTRACK_LOCKS ;
 size_t IP_CT_DIR_ORIGINAL ;
 unsigned int hash_by_src (int ,int *) ;
 int hlist_del_rcu (int *) ;
 int nf_ct_net (struct nf_conn*) ;
 int * nf_nat_locks ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void __nf_nat_cleanup_conntrack(struct nf_conn *ct)
{
 unsigned int h;

 h = hash_by_src(nf_ct_net(ct), &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
 spin_lock_bh(&nf_nat_locks[h % CONNTRACK_LOCKS]);
 hlist_del_rcu(&ct->nat_bysource);
 spin_unlock_bh(&nf_nat_locks[h % CONNTRACK_LOCKS]);
}
