
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_op {int opnum; struct nfs4_replay* replay; } ;
struct nfs4_replay {scalar_t__ rp_buflen; int rp_buf; int rp_status; } ;
typedef int __be32 ;


 int BUG_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int cpu_to_be32 (int ) ;
 int * xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

void
nfsd4_encode_replay(struct xdr_stream *xdr, struct nfsd4_op *op)
{
 __be32 *p;
 struct nfs4_replay *rp = op->replay;

 BUG_ON(!rp);

 p = xdr_reserve_space(xdr, 8 + rp->rp_buflen);
 if (!p) {
  WARN_ON_ONCE(1);
  return;
 }
 *p++ = cpu_to_be32(op->opnum);
 *p++ = rp->rp_status;

 p = xdr_encode_opaque_fixed(p, rp->rp_buf, rp->rp_buflen);
}
