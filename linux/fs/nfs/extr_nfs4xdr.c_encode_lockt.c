
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_lockt_args {int lock_owner; TYPE_1__* fl; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {int fl_start; } ;


 int OP_LOCKT ;
 int cpu_to_be32 (int ) ;
 int decode_lockt_maxsz ;
 int encode_lockowner (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int nfs4_lock_length (TYPE_1__*) ;
 int nfs4_lock_type (TYPE_1__*,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_lockt(struct xdr_stream *xdr, const struct nfs_lockt_args *args, struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_LOCKT, decode_lockt_maxsz, hdr);
 p = reserve_space(xdr, 20);
 *p++ = cpu_to_be32(nfs4_lock_type(args->fl, 0));
 p = xdr_encode_hyper(p, args->fl->fl_start);
 p = xdr_encode_hyper(p, nfs4_lock_length(args->fl));
 encode_lockowner(xdr, &args->lock_owner);
}
