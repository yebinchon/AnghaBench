
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct dccp_sock {scalar_t__ dccps_mss_cache; int dccps_sync_scheduled; struct dccp_ackvec* dccps_hc_rx_ackvec; } ;
struct dccp_skb_cb {scalar_t__ dccpd_opt_len; int dccpd_seq; int dccpd_type; } ;
struct dccp_ackvec {unsigned char* av_buf; int av_buf_head; int* av_buf_nonce; } ;


 int DCCPAV_MAX_ACKVEC_LEN ;
 int DCCPAV_MIN_OPTLEN ;
 int DCCPO_ACK_VECTOR_0 ;
 scalar_t__ DCCP_MAX_OPT_LEN ;
 int DCCP_SINGLE_OPT_MAXLEN ;
 struct dccp_skb_cb* DCCP_SKB_CB (struct sk_buff*) ;
 int DCCP_WARN (char*,int,scalar_t__,...) ;
 int DIV_ROUND_UP (int const,int) ;
 int ENOBUFS ;
 int dccp_ackvec_buflen (struct dccp_ackvec*) ;
 scalar_t__ dccp_ackvec_update_records (struct dccp_ackvec*,int ,int) ;
 int dccp_packet_name (int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int memcpy (unsigned char*,unsigned char const*,int const) ;
 unsigned char* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int dccp_insert_option_ackvec(struct sock *sk, struct sk_buff *skb)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct dccp_ackvec *av = dp->dccps_hc_rx_ackvec;
 struct dccp_skb_cb *dcb = DCCP_SKB_CB(skb);
 const u16 buflen = dccp_ackvec_buflen(av);

 const u8 nr_opts = DIV_ROUND_UP(buflen, DCCP_SINGLE_OPT_MAXLEN);
 u16 len = buflen + 2 * nr_opts;
 u8 i, nonce = 0;
 const unsigned char *tail, *from;
 unsigned char *to;

 if (dcb->dccpd_opt_len + len > DCCP_MAX_OPT_LEN) {
  DCCP_WARN("Lacking space for %u bytes on %s packet\n", len,
     dccp_packet_name(dcb->dccpd_type));
  return -1;
 }





 if (len > DCCPAV_MIN_OPTLEN &&
     len + dcb->dccpd_opt_len + skb->len > dp->dccps_mss_cache) {
  DCCP_WARN("No space left for Ack Vector (%u) on skb (%u+%u), "
     "MPS=%u ==> reduce payload size?\n", len, skb->len,
     dcb->dccpd_opt_len, dp->dccps_mss_cache);
  dp->dccps_sync_scheduled = 1;
  return 0;
 }
 dcb->dccpd_opt_len += len;

 to = skb_push(skb, len);
 len = buflen;
 from = av->av_buf + av->av_buf_head;
 tail = av->av_buf + DCCPAV_MAX_ACKVEC_LEN;

 for (i = 0; i < nr_opts; ++i) {
  int copylen = len;

  if (len > DCCP_SINGLE_OPT_MAXLEN)
   copylen = DCCP_SINGLE_OPT_MAXLEN;





  nonce ^= av->av_buf_nonce[i];

  *to++ = DCCPO_ACK_VECTOR_0 + av->av_buf_nonce[i];
  *to++ = copylen + 2;


  if (from + copylen > tail) {
   const u16 tailsize = tail - from;

   memcpy(to, from, tailsize);
   to += tailsize;
   len -= tailsize;
   copylen -= tailsize;
   from = av->av_buf;
  }

  memcpy(to, from, copylen);
  from += copylen;
  to += copylen;
  len -= copylen;
 }



 if (dccp_ackvec_update_records(av, dcb->dccpd_seq, nonce))
  return -ENOBUFS;
 return 0;
}
