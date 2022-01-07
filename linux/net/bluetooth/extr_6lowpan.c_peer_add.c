
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_peer {int list; } ;
struct lowpan_btle_dev {int peer_count; int peers; } ;


 int atomic_inc (int *) ;
 int list_add_rcu (int *,int *) ;

__attribute__((used)) static inline void peer_add(struct lowpan_btle_dev *dev,
       struct lowpan_peer *peer)
{
 list_add_rcu(&peer->list, &dev->peers);
 atomic_inc(&dev->peer_count);
}
