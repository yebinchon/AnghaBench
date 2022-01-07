
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_calipso_ops {unsigned char* (* skbuff_optptr ) (struct sk_buff const*) ;} ;


 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 unsigned char* stub1 (struct sk_buff const*) ;

unsigned char *calipso_optptr(const struct sk_buff *skb)
{
 unsigned char *ret_val = ((void*)0);
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->skbuff_optptr(skb);
 return ret_val;
}
