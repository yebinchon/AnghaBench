
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ retry_count; scalar_t__ n2; } ;


 TYPE_1__* llc_sk (struct sock*) ;

int llc_conn_ev_qlfy_retry_cnt_gte_n2(struct sock *sk, struct sk_buff *skb)
{
 return !(llc_sk(sk)->retry_count >= llc_sk(sk)->n2);
}
