
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ping_table {struct hlist_nulls_head* hash; } ;
struct net {int dummy; } ;
struct hlist_nulls_head {int dummy; } ;


 int PING_HTABLE_MASK ;
 size_t ping_hashfn (struct net*,unsigned int,int ) ;

__attribute__((used)) static inline struct hlist_nulls_head *ping_hashslot(struct ping_table *table,
          struct net *net, unsigned int num)
{
 return &table->hash[ping_hashfn(net, num, PING_HTABLE_MASK)];
}
