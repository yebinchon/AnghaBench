
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int * nfsd_serv; } ;
struct net {int dummy; } ;
typedef int ssize_t ;


 int SIMPLE_TRANSACTION_LIMIT ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int svc_xprt_names (int *,char*,int ) ;

__attribute__((used)) static ssize_t __write_ports_names(char *buf, struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (nn->nfsd_serv == ((void*)0))
  return 0;
 return svc_xprt_names(nn->nfsd_serv, buf, SIMPLE_TRANSACTION_LIMIT);
}
