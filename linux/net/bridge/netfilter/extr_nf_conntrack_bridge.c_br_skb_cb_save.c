
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int cb; } ;
struct br_input_skb_cb {int dummy; } ;


 int memcpy (struct br_input_skb_cb*,int ,int) ;
 int memset (int ,int ,size_t) ;

__attribute__((used)) static void br_skb_cb_save(struct sk_buff *skb, struct br_input_skb_cb *cb,
      size_t inet_skb_parm_size)
{
 memcpy(cb, skb->cb, sizeof(*cb));
 memset(skb->cb, 0, inet_skb_parm_size);
}
