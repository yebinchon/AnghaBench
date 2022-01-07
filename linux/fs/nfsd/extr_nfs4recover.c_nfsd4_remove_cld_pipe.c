
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {struct cld_net* cld_net; } ;
struct net {int dummy; } ;
struct cld_net {scalar_t__ cn_tfm; int cn_pipe; } ;


 int crypto_free_shash (scalar_t__) ;
 int kfree (struct cld_net*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd4_cld_unregister_net (struct net*,int ) ;
 int nfsd_net_id ;
 int rpc_destroy_pipe_data (int ) ;

__attribute__((used)) static void
nfsd4_remove_cld_pipe(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 struct cld_net *cn = nn->cld_net;

 nfsd4_cld_unregister_net(net, cn->cn_pipe);
 rpc_destroy_pipe_data(cn->cn_pipe);
 if (cn->cn_tfm)
  crypto_free_shash(cn->cn_tfm);
 kfree(nn->cld_net);
 nn->cld_net = ((void*)0);
}
