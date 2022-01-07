
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs4_dns_resolver_ops ;
 int nfs_dns_resolver_block ;
 int rpc_pipefs_notifier_unregister (int *) ;
 int unregister_pernet_subsys (int *) ;

void nfs_dns_resolver_destroy(void)
{
 rpc_pipefs_notifier_unregister(&nfs_dns_resolver_block);
 unregister_pernet_subsys(&nfs4_dns_resolver_ops);
}
