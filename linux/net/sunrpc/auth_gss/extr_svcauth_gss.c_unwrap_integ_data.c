
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_netobj {scalar_t__ len; int data; } ;
struct xdr_buf {int len; int * head; } ;
struct svc_rqst {scalar_t__ rq_deferred; int rq_flags; } ;
struct gss_ctx {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int GSS_S_COMPLETE ;
 scalar_t__ RPC_MAX_AUTH_SIZE ;
 int RQ_SPLICE_OK ;
 int WARN_ON_ONCE (int) ;
 int clear_bit (int ,int *) ;
 int gss_verify_mic (struct gss_ctx*,struct xdr_buf*,struct xdr_netobj*) ;
 int kfree (int ) ;
 int kmalloc (scalar_t__,int ) ;
 scalar_t__ read_bytes_from_xdr_buf (struct xdr_buf*,int,int ,scalar_t__) ;
 scalar_t__ read_u32_from_xdr_buf (struct xdr_buf*,int,scalar_t__*) ;
 scalar_t__ round_up_to_quad (scalar_t__) ;
 int svc_getnl (int *) ;
 scalar_t__ xdr_buf_subsegment (struct xdr_buf*,struct xdr_buf*,int ,int) ;

__attribute__((used)) static int
unwrap_integ_data(struct svc_rqst *rqstp, struct xdr_buf *buf, u32 seq, struct gss_ctx *ctx)
{
 int stat = -EINVAL;
 u32 integ_len, maj_stat;
 struct xdr_netobj mic;
 struct xdr_buf integ_buf;







 clear_bit(RQ_SPLICE_OK, &rqstp->rq_flags);


 if (rqstp->rq_deferred)
  return 0;

 integ_len = svc_getnl(&buf->head[0]);
 if (integ_len & 3)
  return stat;
 if (integ_len > buf->len)
  return stat;
 if (xdr_buf_subsegment(buf, &integ_buf, 0, integ_len)) {
  WARN_ON_ONCE(1);
  return stat;
 }

 if (read_u32_from_xdr_buf(buf, integ_len, &mic.len))
  return stat;
 if (mic.len > RPC_MAX_AUTH_SIZE)
  return stat;
 mic.data = kmalloc(mic.len, GFP_KERNEL);
 if (!mic.data)
  return stat;
 if (read_bytes_from_xdr_buf(buf, integ_len + 4, mic.data, mic.len))
  goto out;
 maj_stat = gss_verify_mic(ctx, &integ_buf, &mic);
 if (maj_stat != GSS_S_COMPLETE)
  goto out;
 if (svc_getnl(&buf->head[0]) != seq)
  goto out;

 buf->len -= 4 + round_up_to_quad(mic.len);
 stat = 0;
out:
 kfree(mic.data);
 return stat;
}
