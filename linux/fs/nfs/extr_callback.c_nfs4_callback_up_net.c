
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv {int dummy; } ;
struct nfs_net {int nfs_callback_tcpport; int nfs_callback_tcpport6; } ;
struct TYPE_2__ {int inum; } ;
struct net {TYPE_1__ ns; } ;
struct cred {int dummy; } ;


 int EAFNOSUPPORT ;
 int ENOMEM ;
 int PF_INET ;
 int PF_INET6 ;
 int SVC_SOCK_ANONYMOUS ;
 struct cred* current_cred () ;
 int dprintk (char*,int,int ,int ) ;
 struct nfs_net* net_generic (struct net*,int ) ;
 int nfs_callback_set_tcpport ;
 int nfs_net_id ;
 int svc_create_xprt (struct svc_serv*,char*,struct net*,int ,int ,int ,struct cred const*) ;

__attribute__((used)) static int nfs4_callback_up_net(struct svc_serv *serv, struct net *net)
{
 const struct cred *cred = current_cred();
 int ret;
 struct nfs_net *nn = net_generic(net, nfs_net_id);

 ret = svc_create_xprt(serv, "tcp", net, PF_INET,
    nfs_callback_set_tcpport, SVC_SOCK_ANONYMOUS,
    cred);
 if (ret <= 0)
  goto out_err;
 nn->nfs_callback_tcpport = ret;
 dprintk("NFS: Callback listener port = %u (af %u, net %x)\n",
  nn->nfs_callback_tcpport, PF_INET, net->ns.inum);

 ret = svc_create_xprt(serv, "tcp", net, PF_INET6,
    nfs_callback_set_tcpport, SVC_SOCK_ANONYMOUS,
    cred);
 if (ret > 0) {
  nn->nfs_callback_tcpport6 = ret;
  dprintk("NFS: Callback listener port = %u (af %u, net %x)\n",
   nn->nfs_callback_tcpport6, PF_INET6, net->ns.inum);
 } else if (ret != -EAFNOSUPPORT)
  goto out_err;
 return 0;

out_err:
 return (ret) ? ret : -ENOMEM;
}
