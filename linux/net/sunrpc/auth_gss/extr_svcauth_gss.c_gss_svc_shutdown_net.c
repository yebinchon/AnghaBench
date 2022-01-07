
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int destroy_use_gss_proxy_proc_entry (struct net*) ;
 int rsc_cache_destroy_net (struct net*) ;
 int rsi_cache_destroy_net (struct net*) ;

void
gss_svc_shutdown_net(struct net *net)
{
 destroy_use_gss_proxy_proc_entry(net);
 rsi_cache_destroy_net(net);
 rsc_cache_destroy_net(net);
}
