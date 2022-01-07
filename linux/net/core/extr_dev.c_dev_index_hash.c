
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {struct hlist_head* dev_index_head; } ;
struct hlist_head {int dummy; } ;


 int NETDEV_HASHENTRIES ;

__attribute__((used)) static inline struct hlist_head *dev_index_hash(struct net *net, int ifindex)
{
 return &net->dev_index_head[ifindex & (NETDEV_HASHENTRIES - 1)];
}
