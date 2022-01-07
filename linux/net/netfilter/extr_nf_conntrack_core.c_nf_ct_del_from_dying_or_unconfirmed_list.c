
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nf_conn {TYPE_2__* tuplehash; int cpu; } ;
struct ct_pcpu {int lock; } ;
struct TYPE_4__ {int pcpu_lists; } ;
struct TYPE_6__ {TYPE_1__ ct; } ;
struct TYPE_5__ {int hnnode; } ;


 int BUG_ON (int ) ;
 size_t IP_CT_DIR_ORIGINAL ;
 int hlist_nulls_del_rcu (int *) ;
 int hlist_nulls_unhashed (int *) ;
 TYPE_3__* nf_ct_net (struct nf_conn*) ;
 struct ct_pcpu* per_cpu_ptr (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nf_ct_del_from_dying_or_unconfirmed_list(struct nf_conn *ct)
{
 struct ct_pcpu *pcpu;


 pcpu = per_cpu_ptr(nf_ct_net(ct)->ct.pcpu_lists, ct->cpu);

 spin_lock(&pcpu->lock);
 BUG_ON(hlist_nulls_unhashed(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode));
 hlist_nulls_del_rcu(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode);
 spin_unlock(&pcpu->lock);
}
