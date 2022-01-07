
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd4_op {int dummy; } ;
typedef int __be32 ;


 int NFS4_OPAQUE_LIMIT ;
 int XDR_QUADLEN (int ) ;
 int op_encode_hdr_size ;

__attribute__((used)) static inline u32 nfsd4_exchange_id_rsize(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
 return (op_encode_hdr_size + 2 + 1 + 1 + 1 + 4 + 2 + XDR_QUADLEN(NFS4_OPAQUE_LIMIT) + 1 + XDR_QUADLEN(NFS4_OPAQUE_LIMIT) + 1 + 1 + 0 ) * sizeof(__be32);
}
