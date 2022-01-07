
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl_ref; } ;
struct nfs4_client {TYPE_1__ cl_nfsdfs; } ;


 int __free_client ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void drop_client(struct nfs4_client *clp)
{
 kref_put(&clp->cl_nfsdfs.cl_ref, __free_client);
}
