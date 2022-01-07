
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int nsid_lock; } ;


 int __peernet2id (struct net*,struct net*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int peernet2id(struct net *net, struct net *peer)
{
 int id;

 spin_lock_bh(&net->nsid_lock);
 id = __peernet2id(net, peer);
 spin_unlock_bh(&net->nsid_lock);
 return id;
}
