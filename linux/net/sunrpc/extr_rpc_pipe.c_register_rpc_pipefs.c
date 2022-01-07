
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_inode {int dummy; } ;


 int ENOMEM ;
 int SLAB_ACCOUNT ;
 int SLAB_HWCACHE_ALIGN ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int init_once ;
 int kmem_cache_create (char*,int,int ,int,int ) ;
 int kmem_cache_destroy (int ) ;
 int register_filesystem (int *) ;
 int rpc_clients_notifier_register () ;
 int rpc_clients_notifier_unregister () ;
 int rpc_inode_cachep ;
 int rpc_pipe_fs_type ;

int register_rpc_pipefs(void)
{
 int err;

 rpc_inode_cachep = kmem_cache_create("rpc_inode_cache",
    sizeof(struct rpc_inode),
    0, (SLAB_HWCACHE_ALIGN|SLAB_RECLAIM_ACCOUNT|
      SLAB_MEM_SPREAD|SLAB_ACCOUNT),
    init_once);
 if (!rpc_inode_cachep)
  return -ENOMEM;
 err = rpc_clients_notifier_register();
 if (err)
  goto err_notifier;
 err = register_filesystem(&rpc_pipe_fs_type);
 if (err)
  goto err_register;
 return 0;

err_register:
 rpc_clients_notifier_unregister();
err_notifier:
 kmem_cache_destroy(rpc_inode_cachep);
 return err;
}
