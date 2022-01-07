
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct sock_reuseport {struct sock** socks; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int GFP_ATOMIC ;
 int __skb_push (struct sk_buff*,int) ;
 size_t bpf_prog_run_save_cb (struct bpf_prog*,struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_shared (struct sk_buff*) ;

__attribute__((used)) static struct sock *run_bpf_filter(struct sock_reuseport *reuse, u16 socks,
       struct bpf_prog *prog, struct sk_buff *skb,
       int hdr_len)
{
 struct sk_buff *nskb = ((void*)0);
 u32 index;

 if (skb_shared(skb)) {
  nskb = skb_clone(skb, GFP_ATOMIC);
  if (!nskb)
   return ((void*)0);
  skb = nskb;
 }


 if (!pskb_pull(skb, hdr_len)) {
  kfree_skb(nskb);
  return ((void*)0);
 }
 index = bpf_prog_run_save_cb(prog, skb);
 __skb_push(skb, hdr_len);

 consume_skb(nskb);

 if (index >= socks)
  return ((void*)0);

 return reuse->socks[index];
}
