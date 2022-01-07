
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int nfs_dns_resolver_cache_destroy (struct net*) ;

__attribute__((used)) static void nfs4_dns_net_exit(struct net *net)
{
 nfs_dns_resolver_cache_destroy(net);
}
