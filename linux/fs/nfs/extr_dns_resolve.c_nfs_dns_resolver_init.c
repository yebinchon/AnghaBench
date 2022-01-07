
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs4_dns_resolver_ops ;
 int nfs_dns_resolver_block ;
 int register_pernet_subsys (int *) ;
 int rpc_pipefs_notifier_register (int *) ;
 int unregister_pernet_subsys (int *) ;

int nfs_dns_resolver_init(void)
{
 int err;

 err = register_pernet_subsys(&nfs4_dns_resolver_ops);
 if (err < 0)
  goto out;
 err = rpc_pipefs_notifier_register(&nfs_dns_resolver_block);
 if (err < 0)
  goto out1;
 return 0;
out1:
 unregister_pernet_subsys(&nfs4_dns_resolver_ops);
out:
 return err;
}
