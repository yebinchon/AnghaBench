
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sk_buff {int dummy; } ;


 int nla_put_u8 (struct sk_buff*,unsigned int,int) ;

__attribute__((used)) static int brport_nla_put_flag(struct sk_buff *skb, u32 flags, u32 mask,
          unsigned int attrnum, unsigned int flag)
{
 if (mask & flag)
  return nla_put_u8(skb, attrnum, !!(flags & flag));
 return 0;
}
