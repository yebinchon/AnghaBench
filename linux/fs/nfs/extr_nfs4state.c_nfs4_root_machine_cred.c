
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {TYPE_1__* cl_rpcclient; int * cl_principal; } ;
struct TYPE_2__ {int * cl_principal; } ;



__attribute__((used)) static void nfs4_root_machine_cred(struct nfs_client *clp)
{


 clp->cl_principal = ((void*)0);
 clp->cl_rpcclient->cl_principal = ((void*)0);
}
