
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int rt_genid_bump_ipv4 (struct net*) ;

void rt_cache_flush(struct net *net)
{
 rt_genid_bump_ipv4(net);
}
