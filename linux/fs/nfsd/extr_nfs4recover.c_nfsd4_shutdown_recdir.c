
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int * rec_file; } ;
struct net {int dummy; } ;


 int fput (int *) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

__attribute__((used)) static void
nfsd4_shutdown_recdir(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 if (!nn->rec_file)
  return;
 fput(nn->rec_file);
 nn->rec_file = ((void*)0);
}
