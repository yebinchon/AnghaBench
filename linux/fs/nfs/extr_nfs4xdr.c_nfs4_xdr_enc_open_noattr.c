
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_openargs {TYPE_2__* lg_args; int open_bitmap; int bitmask; scalar_t__ access; int fh; int seq_args; } ;
struct compound_hdr {int replen; int minorversion; } ;
struct TYPE_3__ {int pglen; int pages; } ;
struct TYPE_4__ {TYPE_1__ layout; } ;


 int encode_access (struct xdr_stream*,scalar_t__,struct compound_hdr*) ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_getfattr_open (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_layoutget (struct xdr_stream*,TYPE_2__*,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_open (struct xdr_stream*,struct nfs_openargs const*,struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,int ,int ,int ,int ) ;

__attribute__((used)) static void nfs4_xdr_enc_open_noattr(struct rpc_rqst *req,
         struct xdr_stream *xdr,
         const void *data)
{
 const struct nfs_openargs *args = data;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 encode_putfh(xdr, args->fh, &hdr);
 encode_open(xdr, args, &hdr);
 if (args->access)
  encode_access(xdr, args->access, &hdr);
 encode_getfattr_open(xdr, args->bitmask, args->open_bitmap, &hdr);
 if (args->lg_args) {
  encode_layoutget(xdr, args->lg_args, &hdr);
  rpc_prepare_reply_pages(req, args->lg_args->layout.pages, 0,
     args->lg_args->layout.pglen,
     hdr.replen);
 }
 encode_nops(&hdr);
}
