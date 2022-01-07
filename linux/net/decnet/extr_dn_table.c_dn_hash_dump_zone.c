
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct netlink_callback {int* args; } ;
struct dn_zone {int dz_divisor; int ** dz_hash; } ;
struct dn_fib_table {int dummy; } ;


 scalar_t__ dn_hash_dump_bucket (struct sk_buff*,struct netlink_callback*,struct dn_fib_table*,struct dn_zone*,int *) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static __inline__ int dn_hash_dump_zone(struct sk_buff *skb,
    struct netlink_callback *cb,
    struct dn_fib_table *tb,
    struct dn_zone *dz)
{
 int h, s_h;

 s_h = cb->args[3];
 for(h = 0; h < dz->dz_divisor; h++) {
  if (h < s_h)
   continue;
  if (h > s_h)
   memset(&cb->args[4], 0, sizeof(cb->args) - 4*sizeof(cb->args[0]));
  if (dz->dz_hash == ((void*)0) || dz->dz_hash[h] == ((void*)0))
   continue;
  if (dn_hash_dump_bucket(skb, cb, tb, dz, dz->dz_hash[h]) < 0) {
   cb->args[3] = h;
   return -1;
  }
 }
 cb->args[3] = h;
 return skb->len;
}
