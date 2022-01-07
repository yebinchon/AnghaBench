
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ retry_count; } ;


 TYPE_1__* llc_sk (struct sock*) ;

int llc_conn_ac_set_retry_cnt_0(struct sock *sk, struct sk_buff *skb)
{
 llc_sk(sk)->retry_count = 0;
 return 0;
}
