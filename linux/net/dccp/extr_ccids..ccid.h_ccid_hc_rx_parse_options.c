
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct ccid {TYPE_1__* ccid_ops; } ;
struct TYPE_2__ {int (* ccid_hc_rx_parse_options ) (struct sock*,int ,int ,int *,int ) ;} ;


 int stub1 (struct sock*,int ,int ,int *,int ) ;

__attribute__((used)) static inline int ccid_hc_rx_parse_options(struct ccid *ccid, struct sock *sk,
        u8 pkt, u8 opt, u8 *val, u8 len)
{
 if (!ccid || !ccid->ccid_ops->ccid_hc_rx_parse_options)
  return 0;
 return ccid->ccid_ops->ccid_hc_rx_parse_options(sk, pkt, opt, val, len);
}
