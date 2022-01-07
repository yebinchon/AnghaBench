
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int cl_net; TYPE_1__* cl_mvops; int cl_res_state; } ;
struct TYPE_2__ {int minor_version; } ;


 int NFS_CS_CALLBACK ;
 scalar_t__ __test_and_clear_bit (int ,int *) ;
 int nfs_callback_down (int ,int ) ;

__attribute__((used)) static void nfs4_destroy_callback(struct nfs_client *clp)
{
 if (__test_and_clear_bit(NFS_CS_CALLBACK, &clp->cl_res_state))
  nfs_callback_down(clp->cl_mvops->minor_version, clp->cl_net);
}
