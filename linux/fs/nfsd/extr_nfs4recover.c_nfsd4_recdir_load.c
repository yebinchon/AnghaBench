
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int rec_file; } ;
struct net {int dummy; } ;


 int load_recdir ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd4_list_rec_dir (int ,struct nfsd_net*) ;
 int nfsd_net_id ;
 int printk (char*,int ) ;

__attribute__((used)) static int
nfsd4_recdir_load(struct net *net) {
 int status;
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (!nn->rec_file)
  return 0;

 status = nfsd4_list_rec_dir(load_recdir, nn);
 if (status)
  printk("nfsd4: failed loading clients from recovery"
   " directory %pD\n", nn->rec_file);
 return status;
}
