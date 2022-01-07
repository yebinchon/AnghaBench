
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int bpf_try_make_writable (struct sk_buff*,int ) ;
 int skb_headlen (struct sk_buff*) ;

__attribute__((used)) static int bpf_try_make_head_writable(struct sk_buff *skb)
{
 return bpf_try_make_writable(skb, skb_headlen(skb));
}
