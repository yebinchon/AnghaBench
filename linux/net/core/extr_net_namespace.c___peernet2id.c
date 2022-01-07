
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int __peernet2id_alloc (struct net*,struct net*,int*) ;

__attribute__((used)) static int __peernet2id(struct net *net, struct net *peer)
{
 bool no = 0;

 return __peernet2id_alloc(net, peer, &no);
}
