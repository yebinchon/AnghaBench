
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int tx_x_recv; int tx_p; } ;
typedef int __be32 ;


 int DCCP_PKT_DATA ;
 int DCCP_WARN (char*,int ,struct sock*,int,int) ;
 int EINVAL ;


 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 int ccid3_pr_debug (char*,int ,struct sock*,int) ;
 int dccp_role (struct sock*) ;
 int get_unaligned (int*) ;
 int ntohl (int ) ;
 int tfrc_invert_loss_event_rate (int) ;
 int unlikely (int) ;

__attribute__((used)) static int ccid3_hc_tx_parse_options(struct sock *sk, u8 packet_type,
         u8 option, u8 *optval, u8 optlen)
{
 struct ccid3_hc_tx_sock *hc = ccid3_hc_tx_sk(sk);
 __be32 opt_val;

 switch (option) {
 case 128:
 case 129:

  if (packet_type == DCCP_PKT_DATA)
   break;
  if (unlikely(optlen != 4)) {
   DCCP_WARN("%s(%p), invalid len %d for %u\n",
      dccp_role(sk), sk, optlen, option);
   return -EINVAL;
  }
  opt_val = ntohl(get_unaligned((__be32 *)optval));

  if (option == 128) {

   hc->tx_x_recv = opt_val;
   hc->tx_x_recv <<= 6;

   ccid3_pr_debug("%s(%p), RECEIVE_RATE=%u\n",
           dccp_role(sk), sk, opt_val);
  } else {

   hc->tx_p = tfrc_invert_loss_event_rate(opt_val);

   ccid3_pr_debug("%s(%p), LOSS_EVENT_RATE=%u\n",
           dccp_role(sk), sk, opt_val);
  }
 }
 return 0;
}
