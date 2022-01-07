
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client_initdata {int net; int nconnect; int proto; scalar_t__ hostname; int addrlen; int addr; TYPE_1__* nfs_mod; } ;
struct nfs_client {char* cl_principal; TYPE_1__* cl_nfs_mod; int cl_net; int cl_nconnect; int cl_proto; struct nfs_client* cl_rpcclient; int cl_superblocks; int cl_hostname; int cl_addrlen; int cl_addr; int cl_cons_state; int cl_count; int rpc_ops; } ;
struct TYPE_2__ {int rpc_ops; int owner; } ;


 int EINVAL ;
 int ENOMEM ;
 struct nfs_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NFS_CS_INITING ;
 int get_net (int ) ;
 int kfree (struct nfs_client*) ;
 int kstrdup (scalar_t__,int ) ;
 struct nfs_client* kzalloc (int,int ) ;
 int memcpy (int *,int ,int ) ;
 int nfs_fscache_get_client_cookie (struct nfs_client*) ;
 int put_nfs_version (TYPE_1__*) ;
 int refcount_set (int *,int) ;
 int try_module_get (int ) ;

struct nfs_client *nfs_alloc_client(const struct nfs_client_initdata *cl_init)
{
 struct nfs_client *clp;
 int err = -ENOMEM;

 if ((clp = kzalloc(sizeof(*clp), GFP_KERNEL)) == ((void*)0))
  goto error_0;

 clp->cl_nfs_mod = cl_init->nfs_mod;
 if (!try_module_get(clp->cl_nfs_mod->owner))
  goto error_dealloc;

 clp->rpc_ops = clp->cl_nfs_mod->rpc_ops;

 refcount_set(&clp->cl_count, 1);
 clp->cl_cons_state = NFS_CS_INITING;

 memcpy(&clp->cl_addr, cl_init->addr, cl_init->addrlen);
 clp->cl_addrlen = cl_init->addrlen;

 if (cl_init->hostname) {
  err = -ENOMEM;
  clp->cl_hostname = kstrdup(cl_init->hostname, GFP_KERNEL);
  if (!clp->cl_hostname)
   goto error_cleanup;
 }

 INIT_LIST_HEAD(&clp->cl_superblocks);
 clp->cl_rpcclient = ERR_PTR(-EINVAL);

 clp->cl_proto = cl_init->proto;
 clp->cl_nconnect = cl_init->nconnect;
 clp->cl_net = get_net(cl_init->net);

 clp->cl_principal = "*";
 nfs_fscache_get_client_cookie(clp);

 return clp;

error_cleanup:
 put_nfs_version(clp->cl_nfs_mod);
error_dealloc:
 kfree(clp);
error_0:
 return ERR_PTR(err);
}
