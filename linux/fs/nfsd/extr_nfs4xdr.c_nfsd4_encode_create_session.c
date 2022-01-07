
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_6__ {scalar_t__ rdma_attrs; scalar_t__ nr_rdma_attrs; scalar_t__ maxreqs; scalar_t__ maxops; scalar_t__ maxresp_cached; scalar_t__ maxresp_sz; scalar_t__ maxreq_sz; } ;
struct TYPE_5__ {scalar_t__ rdma_attrs; scalar_t__ nr_rdma_attrs; scalar_t__ maxreqs; scalar_t__ maxops; scalar_t__ maxresp_cached; scalar_t__ maxresp_sz; scalar_t__ maxreq_sz; } ;
struct TYPE_4__ {int data; } ;
struct nfsd4_create_session {TYPE_3__ back_channel; TYPE_2__ fore_channel; scalar_t__ flags; scalar_t__ seqid; TYPE_1__ sessionid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int NFS4_MAX_SESSIONID_LEN ;
 void* cpu_to_be32 (scalar_t__) ;
 int nfserr_resource ;
 int * xdr_encode_opaque_fixed (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_create_session(struct nfsd4_compoundres *resp, __be32 nfserr,
       struct nfsd4_create_session *sess)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, 24);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_opaque_fixed(p, sess->sessionid.data,
     NFS4_MAX_SESSIONID_LEN);
 *p++ = cpu_to_be32(sess->seqid);
 *p++ = cpu_to_be32(sess->flags);

 p = xdr_reserve_space(xdr, 28);
 if (!p)
  return nfserr_resource;
 *p++ = cpu_to_be32(0);
 *p++ = cpu_to_be32(sess->fore_channel.maxreq_sz);
 *p++ = cpu_to_be32(sess->fore_channel.maxresp_sz);
 *p++ = cpu_to_be32(sess->fore_channel.maxresp_cached);
 *p++ = cpu_to_be32(sess->fore_channel.maxops);
 *p++ = cpu_to_be32(sess->fore_channel.maxreqs);
 *p++ = cpu_to_be32(sess->fore_channel.nr_rdma_attrs);

 if (sess->fore_channel.nr_rdma_attrs) {
  p = xdr_reserve_space(xdr, 4);
  if (!p)
   return nfserr_resource;
  *p++ = cpu_to_be32(sess->fore_channel.rdma_attrs);
 }

 p = xdr_reserve_space(xdr, 28);
 if (!p)
  return nfserr_resource;
 *p++ = cpu_to_be32(0);
 *p++ = cpu_to_be32(sess->back_channel.maxreq_sz);
 *p++ = cpu_to_be32(sess->back_channel.maxresp_sz);
 *p++ = cpu_to_be32(sess->back_channel.maxresp_cached);
 *p++ = cpu_to_be32(sess->back_channel.maxops);
 *p++ = cpu_to_be32(sess->back_channel.maxreqs);
 *p++ = cpu_to_be32(sess->back_channel.nr_rdma_attrs);

 if (sess->back_channel.nr_rdma_attrs) {
  p = xdr_reserve_space(xdr, 4);
  if (!p)
   return nfserr_resource;
  *p++ = cpu_to_be32(sess->back_channel.rdma_attrs);
 }
 return 0;
}
