
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_peer {int list; } ;
struct lowpan_btle_dev {int peer_count; } ;


 int BT_DBG (char*) ;
 int THIS_MODULE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree_rcu (struct lowpan_peer*,int ) ;
 int list_del_rcu (int *) ;
 int module_put (int ) ;
 int rcu ;

__attribute__((used)) static inline bool peer_del(struct lowpan_btle_dev *dev,
       struct lowpan_peer *peer)
{
 list_del_rcu(&peer->list);
 kfree_rcu(peer, rcu);

 module_put(THIS_MODULE);

 if (atomic_dec_and_test(&dev->peer_count)) {
  BT_DBG("last peer");
  return 1;
 }

 return 0;
}
