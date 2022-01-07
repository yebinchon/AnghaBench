
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
typedef int __be32 ;
struct TYPE_4__ {size_t dccps_qpolicy; } ;
struct TYPE_3__ {int params; } ;


 TYPE_2__* dccp_sk (struct sock*) ;
 TYPE_1__* qpol_table ;

bool dccp_qpolicy_param_ok(struct sock *sk, __be32 param)
{

 if (!param || (param & (param - 1)))
  return 0;
 return (qpol_table[dccp_sk(sk)->dccps_qpolicy].params & param) == param;
}
