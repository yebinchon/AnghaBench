
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ nfs4_verifier ;
typedef int __be32 ;


 int BUILD_BUG_ON (int) ;
 int net_generic (struct net*,int ) ;
 int nfsd_copy_boot_verifier (int *,int ) ;
 int nfsd_net_id ;

__attribute__((used)) static void gen_boot_verifier(nfs4_verifier *verifier, struct net *net)
{
 __be32 *verf = (__be32 *)verifier->data;

 BUILD_BUG_ON(2*sizeof(*verf) != sizeof(verifier->data));

 nfsd_copy_boot_verifier(verf, net_generic(net, nfsd_net_id));
}
