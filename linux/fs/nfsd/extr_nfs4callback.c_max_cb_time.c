
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct nfsd_net {int nfsd4_lease; } ;
struct net {int dummy; } ;


 int HZ ;
 int max (int,int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

__attribute__((used)) static int max_cb_time(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 return max(nn->nfsd4_lease/10, (time_t)1) * HZ;
}
