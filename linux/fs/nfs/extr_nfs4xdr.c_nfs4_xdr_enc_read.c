
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct rpc_rqst {TYPE_1__ rq_rcv_buf; } ;
struct nfs_pgio_args {int count; int pgbase; int pages; int fh; int seq_args; } ;
struct compound_hdr {int replen; int minorversion; } ;


 int XDRBUF_READ ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_read (struct xdr_stream*,struct nfs_pgio_args const*,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,int ,int ,int ,int ) ;

__attribute__((used)) static void nfs4_xdr_enc_read(struct rpc_rqst *req, struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs_pgio_args *args = data;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 encode_putfh(xdr, args->fh, &hdr);
 encode_read(xdr, args, &hdr);

 rpc_prepare_reply_pages(req, args->pages, args->pgbase,
    args->count, hdr.replen);
 req->rq_rcv_buf.flags |= XDRBUF_READ;
 encode_nops(&hdr);
}
