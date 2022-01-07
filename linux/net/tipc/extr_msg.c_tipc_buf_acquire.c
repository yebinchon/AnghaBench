
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int * next; } ;
typedef int gfp_t ;


 int BUF_HEADROOM ;
 struct sk_buff* alloc_skb_fclone (unsigned int,int ) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;

struct sk_buff *tipc_buf_acquire(u32 size, gfp_t gfp)
{
 struct sk_buff *skb;
 unsigned int buf_size = (BUF_HEADROOM + size + 3) & ~3u;

 skb = alloc_skb_fclone(buf_size, gfp);
 if (skb) {
  skb_reserve(skb, BUF_HEADROOM);
  skb_put(skb, size);
  skb->next = ((void*)0);
 }
 return skb;
}
