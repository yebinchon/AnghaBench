
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_info {int dummy; } ;
struct sock {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int (* ccid_hc_rx_get_info ) (struct sock*,struct tcp_info*) ;} ;


 int stub1 (struct sock*,struct tcp_info*) ;

__attribute__((used)) static inline void ccid_hc_rx_get_info(struct ccid *ccid, struct sock *sk,
           struct tcp_info *info)
{
 if (ccid->ccid_ops->ccid_hc_rx_get_info != ((void*)0))
  ccid->ccid_ops->ccid_hc_rx_get_info(sk, info);
}
