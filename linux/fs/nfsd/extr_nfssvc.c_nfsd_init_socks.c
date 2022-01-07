
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* nfsd_serv; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int sv_permsocks; } ;


 int NFS_PORT ;
 int PF_INET ;
 int SVC_SOCK_DEFAULTS ;
 int list_empty (int *) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int svc_create_xprt (TYPE_1__*,char*,struct net*,int ,int ,int ,struct cred const*) ;

__attribute__((used)) static int nfsd_init_socks(struct net *net, const struct cred *cred)
{
 int error;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (!list_empty(&nn->nfsd_serv->sv_permsocks))
  return 0;

 error = svc_create_xprt(nn->nfsd_serv, "udp", net, PF_INET, NFS_PORT,
     SVC_SOCK_DEFAULTS, cred);
 if (error < 0)
  return error;

 error = svc_create_xprt(nn->nfsd_serv, "tcp", net, PF_INET, NFS_PORT,
     SVC_SOCK_DEFAULTS, cred);
 if (error < 0)
  return error;

 return 0;
}
