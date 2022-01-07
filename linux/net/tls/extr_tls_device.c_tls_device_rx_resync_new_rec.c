
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tls_prot_info {int rec_seq_size; } ;
struct tls_offload_context_rx {int resync_type; int resync_nh_do_now; int resync_req; } ;
struct TYPE_2__ {int rec_seq; } ;
struct tls_context {scalar_t__ rx_conf; TYPE_1__ rx; struct tls_prot_info prot_info; } ;
struct sock {int dummy; } ;
typedef int s64 ;


 int TLS_HEADER_SIZE ;
 scalar_t__ TLS_HW ;
 int TLS_MAX_REC_SEQ_SIZE ;


 int atomic64_read (int *) ;
 int atomic64_try_cmpxchg (int *,int*,int ) ;
 int likely (int) ;
 int memcpy (int *,int ,int ) ;
 int tcp_inq (struct sock*) ;
 int tls_bigint_increment (int *,int ) ;
 int tls_device_resync_rx (struct tls_context*,struct sock*,int,int *) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_offload_context_rx* tls_offload_ctx_rx (struct tls_context*) ;

void tls_device_rx_resync_new_rec(struct sock *sk, u32 rcd_len, u32 seq)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_offload_context_rx *rx_ctx;
 u8 rcd_sn[TLS_MAX_REC_SEQ_SIZE];
 struct tls_prot_info *prot;
 u32 is_req_pending;
 s64 resync_req;
 u32 req_seq;

 if (tls_ctx->rx_conf != TLS_HW)
  return;

 prot = &tls_ctx->prot_info;
 rx_ctx = tls_offload_ctx_rx(tls_ctx);
 memcpy(rcd_sn, tls_ctx->rx.rec_seq, prot->rec_seq_size);

 switch (rx_ctx->resync_type) {
 case 128:
  resync_req = atomic64_read(&rx_ctx->resync_req);
  req_seq = resync_req >> 32;
  seq += TLS_HEADER_SIZE - 1;
  is_req_pending = resync_req;

  if (likely(!is_req_pending) || req_seq != seq ||
      !atomic64_try_cmpxchg(&rx_ctx->resync_req, &resync_req, 0))
   return;
  break;
 case 129:
  if (likely(!rx_ctx->resync_nh_do_now))
   return;




  if (tcp_inq(sk) > rcd_len)
   return;

  rx_ctx->resync_nh_do_now = 0;
  seq += rcd_len;
  tls_bigint_increment(rcd_sn, prot->rec_seq_size);
  break;
 }

 tls_device_resync_rx(tls_ctx, sk, seq, rcd_sn);
}
