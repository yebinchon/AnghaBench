
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ccid2_hc_rx_sock {int dummy; } ;
struct TYPE_2__ {int dccps_hc_rx_ccid; } ;


 struct ccid2_hc_rx_sock* ccid_priv (int ) ;
 TYPE_1__* dccp_sk (struct sock const*) ;

__attribute__((used)) static inline struct ccid2_hc_rx_sock *ccid2_hc_rx_sk(const struct sock *sk)
{
 return ccid_priv(dccp_sk(sk)->dccps_hc_rx_ccid);
}
