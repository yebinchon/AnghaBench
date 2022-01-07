
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_xprt {int dummy; } ;
struct nfsd_net {TYPE_1__* nfsd_serv; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int sv_nrthreads; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int PF_INET ;
 int PF_INET6 ;
 int SVC_SOCK_ANONYMOUS ;
 int USHRT_MAX ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_create_serv (struct net*) ;
 int nfsd_destroy (struct net*) ;
 int nfsd_net_id ;
 int sscanf (char*,char*,char*,int*) ;
 int svc_close_xprt (struct svc_xprt*) ;
 int svc_create_xprt (TYPE_1__*,char*,struct net*,int ,int,int ,struct cred const*) ;
 struct svc_xprt* svc_find_xprt (TYPE_1__*,char*,struct net*,int ,int) ;
 int svc_xprt_put (struct svc_xprt*) ;

__attribute__((used)) static ssize_t __write_ports_addxprt(char *buf, struct net *net, const struct cred *cred)
{
 char transport[16];
 struct svc_xprt *xprt;
 int port, err;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (sscanf(buf, "%15s %5u", transport, &port) != 2)
  return -EINVAL;

 if (port < 1 || port > USHRT_MAX)
  return -EINVAL;

 err = nfsd_create_serv(net);
 if (err != 0)
  return err;

 err = svc_create_xprt(nn->nfsd_serv, transport, net,
    PF_INET, port, SVC_SOCK_ANONYMOUS, cred);
 if (err < 0)
  goto out_err;

 err = svc_create_xprt(nn->nfsd_serv, transport, net,
    PF_INET6, port, SVC_SOCK_ANONYMOUS, cred);
 if (err < 0 && err != -EAFNOSUPPORT)
  goto out_close;


 nn->nfsd_serv->sv_nrthreads--;
 return 0;
out_close:
 xprt = svc_find_xprt(nn->nfsd_serv, transport, net, PF_INET, port);
 if (xprt != ((void*)0)) {
  svc_close_xprt(xprt);
  svc_xprt_put(xprt);
 }
out_err:
 nfsd_destroy(net);
 return err;
}
