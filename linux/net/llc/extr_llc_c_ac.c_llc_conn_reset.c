
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int llc_sk_reset (struct sock*) ;

int llc_conn_reset(struct sock *sk, struct sk_buff *skb)
{
 llc_sk_reset(sk);
 return 0;
}
