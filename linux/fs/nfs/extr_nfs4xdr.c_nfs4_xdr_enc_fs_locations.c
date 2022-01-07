
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_fs_locations_arg {int page; int bitmask; int name; int dir_fh; int clientid; scalar_t__ renew; int fh; scalar_t__ migration; int seq_args; } ;
struct compound_hdr {scalar_t__ replen; int minorversion; } ;


 int PAGE_SIZE ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_fs_locations (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_lookup (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_renew (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;
 int rpc_prepare_reply_pages (struct rpc_rqst*,struct page**,int ,int ,scalar_t__) ;

__attribute__((used)) static void nfs4_xdr_enc_fs_locations(struct rpc_rqst *req,
          struct xdr_stream *xdr,
          const void *data)
{
 const struct nfs4_fs_locations_arg *args = data;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };
 uint32_t replen;

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 if (args->migration) {
  encode_putfh(xdr, args->fh, &hdr);
  replen = hdr.replen;
  encode_fs_locations(xdr, args->bitmask, &hdr);
  if (args->renew)
   encode_renew(xdr, args->clientid, &hdr);
 } else {
  encode_putfh(xdr, args->dir_fh, &hdr);
  encode_lookup(xdr, args->name, &hdr);
  replen = hdr.replen;
  encode_fs_locations(xdr, args->bitmask, &hdr);
 }

 rpc_prepare_reply_pages(req, (struct page **)&args->page, 0,
    PAGE_SIZE, replen + 1);
 encode_nops(&hdr);
}
