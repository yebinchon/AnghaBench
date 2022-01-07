
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int nla_put_u16 (struct sk_buff*,int,int ) ;

__attribute__((used)) static int nla_put_shortaddr(struct sk_buff *msg, int type, __le16 addr)
{
 return nla_put_u16(msg, type, le16_to_cpu(addr));
}
