
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd4_op {int dummy; } ;
typedef int __be32 ;


 int NFS4_MAX_SESSIONID_LEN ;
 int XDR_QUADLEN (int ) ;
 int op_encode_channel_attrs_maxsz ;
 int op_encode_hdr_size ;

__attribute__((used)) static inline u32 nfsd4_create_session_rsize(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
 return (op_encode_hdr_size + XDR_QUADLEN(NFS4_MAX_SESSIONID_LEN) + 2 + op_encode_channel_attrs_maxsz + op_encode_channel_attrs_maxsz) * sizeof(__be32);




}
