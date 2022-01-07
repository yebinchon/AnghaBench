
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {size_t dccps_qpolicy; } ;
struct TYPE_3__ {int (* push ) (struct sock*,struct sk_buff*) ;} ;


 TYPE_2__* dccp_sk (struct sock*) ;
 TYPE_1__* qpol_table ;
 int stub1 (struct sock*,struct sk_buff*) ;

void dccp_qpolicy_push(struct sock *sk, struct sk_buff *skb)
{
 qpol_table[dccp_sk(sk)->dccps_qpolicy].push(sk, skb);
}
