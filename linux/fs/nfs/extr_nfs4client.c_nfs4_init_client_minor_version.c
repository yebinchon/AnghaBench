
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {TYPE_1__* cl_mvops; } ;
struct TYPE_2__ {int (* init_client ) (struct nfs_client*) ;} ;


 int nfs4_init_callback (struct nfs_client*) ;
 int stub1 (struct nfs_client*) ;

__attribute__((used)) static int nfs4_init_client_minor_version(struct nfs_client *clp)
{
 int ret;

 ret = clp->cl_mvops->init_client(clp);
 if (ret)
  return ret;
 return nfs4_init_callback(clp);
}
