
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {struct net* net; } ;
struct net {int dummy; } ;


 int lockd_down (struct net*) ;
 int nlmclnt_release_host (struct nlm_host*) ;

void nlmclnt_done(struct nlm_host *host)
{
 struct net *net = host->net;

 nlmclnt_release_host(host);
 lockd_down(net);
}
