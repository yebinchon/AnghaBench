
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_match {int config; scalar_t__ to_offset; int to_layer; scalar_t__ from_offset; int from_layer; } ;
struct tcf_pkt_info {int dummy; } ;
struct tcf_ematch {int dummy; } ;
struct sk_buff {int data; } ;


 struct text_match* EM_TEXT_PRIV (struct tcf_ematch*) ;
 scalar_t__ UINT_MAX ;
 scalar_t__ skb_find_text (struct sk_buff*,int,int,int ) ;
 int tcf_get_base_ptr (struct sk_buff*,int ) ;

__attribute__((used)) static int em_text_match(struct sk_buff *skb, struct tcf_ematch *m,
    struct tcf_pkt_info *info)
{
 struct text_match *tm = EM_TEXT_PRIV(m);
 int from, to;

 from = tcf_get_base_ptr(skb, tm->from_layer) - skb->data;
 from += tm->from_offset;

 to = tcf_get_base_ptr(skb, tm->to_layer) - skb->data;
 to += tm->to_offset;

 return skb_find_text(skb, from, to, tm->config) != UINT_MAX;
}
