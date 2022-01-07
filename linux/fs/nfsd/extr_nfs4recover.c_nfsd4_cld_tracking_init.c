
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd_net {TYPE_1__* cld_net; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int cn_tfm; } ;


 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __nfsd4_init_cld_pipe (struct net*) ;
 int cld_running (struct nfsd_net*) ;
 int crypto_alloc_shash (char*,int ,int ) ;
 int msleep (int) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfs4_cld_state_init (struct net*) ;
 int nfs4_cld_state_shutdown (struct net*) ;
 int nfs4_release_reclaim (struct nfsd_net*) ;
 int nfsd4_cld_get_version (struct nfsd_net*) ;
 int nfsd4_cld_grace_start (struct nfsd_net*) ;
 int nfsd4_remove_cld_pipe (struct net*) ;
 int nfsd_net_id ;
 int pr_warn (char*) ;
 int printk (char*) ;

__attribute__((used)) static int
nfsd4_cld_tracking_init(struct net *net)
{
 int status;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 bool running;
 int retries = 10;

 status = nfs4_cld_state_init(net);
 if (status)
  return status;

 status = __nfsd4_init_cld_pipe(net);
 if (status)
  goto err_shutdown;
 nn->cld_net->cn_tfm = crypto_alloc_shash("sha256", 0, 0);
 if (IS_ERR(nn->cld_net->cn_tfm)) {
  status = PTR_ERR(nn->cld_net->cn_tfm);
  goto err_remove;
 }
 while (!(running = cld_running(nn)) && retries--)
  msleep(100);

 if (!running) {
  status = -ETIMEDOUT;
  goto err_remove;
 }

 status = nfsd4_cld_get_version(nn);
 if (status == -EOPNOTSUPP)
  pr_warn("NFSD: nfsdcld GetVersion upcall failed. Please upgrade nfsdcld.\n");

 status = nfsd4_cld_grace_start(nn);
 if (status) {
  if (status == -EOPNOTSUPP)
   pr_warn("NFSD: nfsdcld GraceStart upcall failed. Please upgrade nfsdcld.\n");
  nfs4_release_reclaim(nn);
  goto err_remove;
 } else
  printk("NFSD: Using nfsdcld client tracking operations.\n");
 return 0;

err_remove:
 nfsd4_remove_cld_pipe(net);
err_shutdown:
 nfs4_cld_state_shutdown(net);
 return status;
}
