
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;


 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int skb_push (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int bpf_skb_generic_push(struct sk_buff *skb, u32 off, u32 len)
{



 skb_push(skb, len);
 memmove(skb->data, skb->data + len, off);
 memset(skb->data + off, 0, len);






 return 0;
}
