
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int create_use_gss_proxy_proc_entry (struct net*) ;
 int destroy_use_gss_proxy_proc_entry (struct net*) ;
 int rsc_cache_create_net (struct net*) ;
 int rsc_cache_destroy_net (struct net*) ;
 int rsi_cache_create_net (struct net*) ;

int
gss_svc_init_net(struct net *net)
{
 int rv;

 rv = rsc_cache_create_net(net);
 if (rv)
  return rv;
 rv = rsi_cache_create_net(net);
 if (rv)
  goto out1;
 rv = create_use_gss_proxy_proc_entry(net);
 if (rv)
  goto out2;
 return 0;
out2:
 destroy_use_gss_proxy_proc_entry(net);
out1:
 rsc_cache_destroy_net(net);
 return rv;
}
