
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wr_verifier; int wr_stable_how; } ;
struct nfsd4_copy {int cp_synchronous; TYPE_2__* cp_clp; TYPE_1__ cp_res; } ;
struct TYPE_4__ {int net; } ;


 int NFS_UNSTABLE ;
 int gen_boot_verifier (int *,int ) ;

__attribute__((used)) static void nfsd4_init_copy_res(struct nfsd4_copy *copy, bool sync)
{
 copy->cp_res.wr_stable_how = NFS_UNSTABLE;
 copy->cp_synchronous = sync;
 gen_boot_verifier(&copy->cp_res.wr_verifier, copy->cp_clp->net);
}
