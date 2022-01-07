
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_locku_args {TYPE_1__* fl; int stateid; int seqid; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {int fl_start; } ;


 int OP_LOCKU ;
 int decode_locku_maxsz ;
 int encode_nfs4_seqid (struct xdr_stream*,int ) ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_uint32 (struct xdr_stream*,int ) ;
 int nfs4_lock_length (TYPE_1__*) ;
 int nfs4_lock_type (TYPE_1__*,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_locku(struct xdr_stream *xdr, const struct nfs_locku_args *args, struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_LOCKU, decode_locku_maxsz, hdr);
 encode_uint32(xdr, nfs4_lock_type(args->fl, 0));
 encode_nfs4_seqid(xdr, args->seqid);
 encode_nfs4_stateid(xdr, &args->stateid);
 p = reserve_space(xdr, 16);
 p = xdr_encode_hyper(p, args->fl->fl_start);
 xdr_encode_hyper(p, nfs4_lock_length(args->fl));
}
