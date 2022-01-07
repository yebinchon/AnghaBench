
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {size_t dccps_qpolicy; } ;
struct TYPE_3__ {struct sk_buff* (* top ) (struct sock*) ;} ;


 TYPE_2__* dccp_sk (struct sock*) ;
 TYPE_1__* qpol_table ;
 struct sk_buff* stub1 (struct sock*) ;

struct sk_buff *dccp_qpolicy_top(struct sock *sk)
{
 return qpol_table[dccp_sk(sk)->dccps_qpolicy].top(sk);
}
