
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {scalar_t__ reclaim_str_hashtbl_size; int * reclaim_str_hashtbl; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;


 int CLIENT_HASH_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int * kmalloc_array (int,int,int ) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;

__attribute__((used)) static int
nfs4_legacy_state_init(struct net *net)
{
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 int i;

 nn->reclaim_str_hashtbl = kmalloc_array(CLIENT_HASH_SIZE,
      sizeof(struct list_head),
      GFP_KERNEL);
 if (!nn->reclaim_str_hashtbl)
  return -ENOMEM;

 for (i = 0; i < CLIENT_HASH_SIZE; i++)
  INIT_LIST_HEAD(&nn->reclaim_str_hashtbl[i]);
 nn->reclaim_str_hashtbl_size = 0;

 return 0;
}
