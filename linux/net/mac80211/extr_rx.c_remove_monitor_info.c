
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;


 int __pskb_pull (struct sk_buff*,unsigned int) ;
 int __pskb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void remove_monitor_info(struct sk_buff *skb,
    unsigned int present_fcs_len,
    unsigned int rtap_space)
{
 if (present_fcs_len)
  __pskb_trim(skb, skb->len - present_fcs_len);
 __pskb_pull(skb, rtap_space);
}
