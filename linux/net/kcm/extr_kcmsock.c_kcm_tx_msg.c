
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct kcm_tx_msg {int dummy; } ;



__attribute__((used)) static inline struct kcm_tx_msg *kcm_tx_msg(struct sk_buff *skb)
{
 return (struct kcm_tx_msg *)skb->cb;
}
