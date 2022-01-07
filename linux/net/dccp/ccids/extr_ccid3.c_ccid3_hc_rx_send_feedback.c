
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_hc_rx_insert_options; } ;
struct ccid3_hc_rx_sock {unsigned int rx_pinv; scalar_t__ rx_bytes_recv; int rx_last_counter; int rx_tstamp_last_feedback; int rx_x_recv; } ;
typedef int s64 ;
typedef int ktime_t ;
typedef enum ccid3_fback_type { ____Placeholder_ccid3_fback_type } ccid3_fback_type ;
struct TYPE_2__ {int dccph_ccval; } ;





 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;
 int ccid3_pr_debug (char*,int,int ,unsigned int) ;
 TYPE_1__* dccp_hdr (struct sk_buff const*) ;
 int dccp_send_ack (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int ktime_get () ;
 int ktime_us_delta (int ,int ) ;
 int scaled_div32 (scalar_t__,int) ;

__attribute__((used)) static void ccid3_hc_rx_send_feedback(struct sock *sk,
          const struct sk_buff *skb,
          enum ccid3_fback_type fbtype)
{
 struct ccid3_hc_rx_sock *hc = ccid3_hc_rx_sk(sk);
 struct dccp_sock *dp = dccp_sk(sk);
 ktime_t now = ktime_get();
 s64 delta = 0;

 switch (fbtype) {
 case 130:
  hc->rx_x_recv = 0;
  hc->rx_pinv = ~0U;
  break;
 case 129:
  if (hc->rx_x_recv > 0)
   break;

 case 128:
  delta = ktime_us_delta(now, hc->rx_tstamp_last_feedback);
  if (delta <= 0)
   delta = 1;
  hc->rx_x_recv = scaled_div32(hc->rx_bytes_recv, delta);
  break;
 default:
  return;
 }

 ccid3_pr_debug("Interval %lldusec, X_recv=%u, 1/p=%u\n", delta,
         hc->rx_x_recv, hc->rx_pinv);

 hc->rx_tstamp_last_feedback = now;
 hc->rx_last_counter = dccp_hdr(skb)->dccph_ccval;
 hc->rx_bytes_recv = 0;

 dp->dccps_hc_rx_insert_options = 1;
 dccp_send_ack(sk);
}
