
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int nsid_lock; int count; } ;
typedef int gfp_t ;


 int NETNSA_NSID_NOT_ASSIGNED ;
 int RTM_NEWNSID ;
 int __peernet2id_alloc (struct net*,struct net*,int*) ;
 scalar_t__ maybe_get_net (struct net*) ;
 int put_net (struct net*) ;
 scalar_t__ refcount_read (int *) ;
 int rtnl_net_notifyid (struct net*,int ,int,int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int peernet2id_alloc(struct net *net, struct net *peer, gfp_t gfp)
{
 bool alloc = 0, alive = 0;
 int id;

 if (refcount_read(&net->count) == 0)
  return NETNSA_NSID_NOT_ASSIGNED;
 spin_lock_bh(&net->nsid_lock);






 if (maybe_get_net(peer))
  alive = alloc = 1;
 id = __peernet2id_alloc(net, peer, &alloc);
 spin_unlock_bh(&net->nsid_lock);
 if (alloc && id >= 0)
  rtnl_net_notifyid(net, RTM_NEWNSID, id, 0, ((void*)0), gfp);
 if (alive)
  put_net(peer);
 return id;
}
