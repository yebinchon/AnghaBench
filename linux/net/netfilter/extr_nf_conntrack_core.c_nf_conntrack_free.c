
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;
struct TYPE_4__ {int count; } ;
struct net {TYPE_2__ ct; } ;


 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int kmem_cache_free (int ,struct nf_conn*) ;
 int nf_conntrack_cachep ;
 int nf_ct_ext_destroy (struct nf_conn*) ;
 int nf_ct_ext_free (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int smp_mb__before_atomic () ;

void nf_conntrack_free(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);




 WARN_ON(atomic_read(&ct->ct_general.use) != 0);

 nf_ct_ext_destroy(ct);
 nf_ct_ext_free(ct);
 kmem_cache_free(nf_conntrack_cachep, ct);
 smp_mb__before_atomic();
 atomic_dec(&net->ct.count);
}
