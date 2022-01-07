
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 scalar_t__ peernet2id (struct net*,struct net*) ;

bool peernet_has_id(struct net *net, struct net *peer)
{
 return peernet2id(net, peer) >= 0;
}
