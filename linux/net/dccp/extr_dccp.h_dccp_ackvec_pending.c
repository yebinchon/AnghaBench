
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int * dccps_hc_rx_ackvec; } ;


 int dccp_ackvec_is_empty (int *) ;
 TYPE_1__* dccp_sk (struct sock const*) ;

__attribute__((used)) static inline int dccp_ackvec_pending(const struct sock *sk)
{
 return dccp_sk(sk)->dccps_hc_rx_ackvec != ((void*)0) &&
        !dccp_ackvec_is_empty(dccp_sk(sk)->dccps_hc_rx_ackvec);
}
