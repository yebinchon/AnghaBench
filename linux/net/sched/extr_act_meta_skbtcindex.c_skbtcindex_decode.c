
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int tc_index; } ;


 int ntohs (int ) ;

__attribute__((used)) static int skbtcindex_decode(struct sk_buff *skb, void *data, u16 len)
{
 u16 ifetc_index = *(u16 *)data;

 skb->tc_index = ntohs(ifetc_index);
 return 0;
}
