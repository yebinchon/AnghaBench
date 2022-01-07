
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {struct hlist_head* dev_name_head; } ;
struct hlist_head {int dummy; } ;


 int IFNAMSIZ ;
 int NETDEV_HASHBITS ;
 unsigned int full_name_hash (struct net*,char const*,int ) ;
 size_t hash_32 (unsigned int,int ) ;
 int strnlen (char const*,int ) ;

__attribute__((used)) static inline struct hlist_head *dev_name_hash(struct net *net, const char *name)
{
 unsigned int hash = full_name_hash(net, name, strnlen(name, IFNAMSIZ));

 return &net->dev_name_head[hash_32(hash, NETDEV_HASHBITS)];
}
