
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct meta_value {int len; int val; } ;


 scalar_t__ nla_put (struct sk_buff*,int,int,int *) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int,int ) ;

__attribute__((used)) static int meta_int_dump(struct sk_buff *skb, struct meta_value *v, int tlv)
{
 if (v->len == sizeof(unsigned long)) {
  if (nla_put(skb, tlv, sizeof(unsigned long), &v->val))
   goto nla_put_failure;
 } else if (v->len == sizeof(u32)) {
  if (nla_put_u32(skb, tlv, v->val))
   goto nla_put_failure;
 }

 return 0;

nla_put_failure:
 return -1;
}
