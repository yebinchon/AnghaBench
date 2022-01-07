
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int netns_ids; } ;


 struct net* idr_find (int *,int) ;
 struct net* maybe_get_net (struct net*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct net *get_net_ns_by_id(struct net *net, int id)
{
 struct net *peer;

 if (id < 0)
  return ((void*)0);

 rcu_read_lock();
 peer = idr_find(&net->netns_ids, id);
 if (peer)
  peer = maybe_get_net(peer);
 rcu_read_unlock();

 return peer;
}
