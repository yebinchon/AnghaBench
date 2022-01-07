
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_calipso_ops {int (* skbuff_delattr ) (struct sk_buff*) ;} ;


 int ENOMSG ;
 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (struct sk_buff*) ;

int calipso_skbuff_delattr(struct sk_buff *skb)
{
 int ret_val = -ENOMSG;
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->skbuff_delattr(skb);
 return ret_val;
}
