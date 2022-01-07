
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_netfs {int name; int primary_index; int version; } ;


 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int fscache_relinquish_cookie (int ,int *,int) ;
 int pr_notice (char*,int ) ;

void __fscache_unregister_netfs(struct fscache_netfs *netfs)
{
 _enter("{%s.%u}", netfs->name, netfs->version);

 fscache_relinquish_cookie(netfs->primary_index, ((void*)0), 0);
 pr_notice("Netfs '%s' unregistered from caching\n", netfs->name);

 _leave("");
}
