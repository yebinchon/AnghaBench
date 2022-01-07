
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nf_conn {TYPE_2__* tuplehash; int cpu; } ;
struct ct_pcpu {int lock; int dying; } ;
struct TYPE_4__ {int pcpu_lists; } ;
struct TYPE_6__ {TYPE_1__ ct; } ;
struct TYPE_5__ {int hnnode; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 int hlist_nulls_add_head (int *,int *) ;
 TYPE_3__* nf_ct_net (struct nf_conn*) ;
 struct ct_pcpu* per_cpu_ptr (int ,int ) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nf_ct_add_to_dying_list(struct nf_conn *ct)
{
 struct ct_pcpu *pcpu;


 ct->cpu = smp_processor_id();
 pcpu = per_cpu_ptr(nf_ct_net(ct)->ct.pcpu_lists, ct->cpu);

 spin_lock(&pcpu->lock);
 hlist_nulls_add_head(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
        &pcpu->dying);
 spin_unlock(&pcpu->lock);
}
