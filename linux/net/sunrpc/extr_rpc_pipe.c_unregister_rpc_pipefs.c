
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int rpc_clients_notifier_unregister () ;
 int rpc_inode_cachep ;
 int rpc_pipe_fs_type ;
 int unregister_filesystem (int *) ;

void unregister_rpc_pipefs(void)
{
 rpc_clients_notifier_unregister();
 kmem_cache_destroy(rpc_inode_cachep);
 unregister_filesystem(&rpc_pipe_fs_type);
}
