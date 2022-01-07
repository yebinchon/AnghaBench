
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_msg {int dummy; } ;


 int __sk_msg_free_partial (struct sock*,struct sk_msg*,int ,int) ;

void sk_msg_free_partial_nocharge(struct sock *sk, struct sk_msg *msg,
      u32 bytes)
{
 __sk_msg_free_partial(sk, msg, bytes, 0);
}
