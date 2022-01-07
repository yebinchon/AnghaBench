
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_lock_args {int lock_seqid; int lock_stateid; int lock_owner; int open_stateid; int open_seqid; scalar_t__ new_lock_owner; TYPE_1__* fl; scalar_t__ reclaim; int block; } ;
struct compound_hdr {int dummy; } ;
typedef void* __be32 ;
struct TYPE_3__ {int fl_start; } ;


 int OP_LOCK ;
 void* cpu_to_be32 (scalar_t__) ;
 int decode_lock_maxsz ;
 int encode_lockowner (struct xdr_stream*,int *) ;
 int encode_nfs4_seqid (struct xdr_stream*,int ) ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int nfs4_lock_length (TYPE_1__*) ;
 scalar_t__ nfs4_lock_type (TYPE_1__*,int ) ;
 void** reserve_space (struct xdr_stream*,int) ;
 void** xdr_encode_hyper (void**,int ) ;

__attribute__((used)) static void encode_lock(struct xdr_stream *xdr, const struct nfs_lock_args *args, struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_LOCK, decode_lock_maxsz, hdr);
 p = reserve_space(xdr, 28);
 *p++ = cpu_to_be32(nfs4_lock_type(args->fl, args->block));
 *p++ = cpu_to_be32(args->reclaim);
 p = xdr_encode_hyper(p, args->fl->fl_start);
 p = xdr_encode_hyper(p, nfs4_lock_length(args->fl));
 *p = cpu_to_be32(args->new_lock_owner);
 if (args->new_lock_owner){
  encode_nfs4_seqid(xdr, args->open_seqid);
  encode_nfs4_stateid(xdr, &args->open_stateid);
  encode_nfs4_seqid(xdr, args->lock_seqid);
  encode_lockowner(xdr, &args->lock_owner);
 }
 else {
  encode_nfs4_stateid(xdr, &args->lock_stateid);
  encode_nfs4_seqid(xdr, args->lock_seqid);
 }
}
