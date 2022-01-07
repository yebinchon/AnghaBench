
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int mark; } ;


 int ntohl (int ) ;

__attribute__((used)) static int skbmark_decode(struct sk_buff *skb, void *data, u16 len)
{
 u32 ifemark = *(u32 *)data;

 skb->mark = ntohl(ifemark);
 return 0;
}
