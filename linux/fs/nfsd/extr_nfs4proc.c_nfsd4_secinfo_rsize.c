
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd4_op {int dummy; } ;
typedef int __be32 ;


 int GSS_OID_MAX_LEN ;
 int RPC_AUTH_MAXFLAVOR ;
 int XDR_QUADLEN (int ) ;
 int op_encode_hdr_size ;

__attribute__((used)) static inline u32 nfsd4_secinfo_rsize(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
 return (op_encode_hdr_size + RPC_AUTH_MAXFLAVOR *
  (4 + XDR_QUADLEN(GSS_OID_MAX_LEN))) * sizeof(__be32);
}
