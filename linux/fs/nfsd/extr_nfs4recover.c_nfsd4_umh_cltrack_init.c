
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int boot_time; } ;
struct net {int dummy; } ;


 int EINVAL ;
 struct net init_net ;
 int kfree (char*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 char* nfsd4_cltrack_grace_start (int ) ;
 int nfsd4_umh_cltrack_upcall (char*,int *,char*,int *) ;
 int nfsd_net_id ;
 int pr_warn (char*) ;
 int printk (char*) ;

__attribute__((used)) static int
nfsd4_umh_cltrack_init(struct net *net)
{
 int ret;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 char *grace_start = nfsd4_cltrack_grace_start(nn->boot_time);


 if (net != &init_net) {
  pr_warn("NFSD: attempt to initialize umh client tracking in a container ignored.\n");
  kfree(grace_start);
  return -EINVAL;
 }

 ret = nfsd4_umh_cltrack_upcall("init", ((void*)0), grace_start, ((void*)0));
 kfree(grace_start);
 if (!ret)
  printk("NFSD: Using UMH upcall client tracking operations.\n");
 return ret;
}
