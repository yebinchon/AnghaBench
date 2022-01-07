
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct TYPE_3__ {int rd_length; } ;
struct TYPE_4__ {TYPE_1__ read; } ;
struct nfsd4_op {TYPE_2__ u; } ;
typedef int __be32 ;


 int XDR_QUADLEN (int) ;
 int min (int ,int) ;
 int op_encode_hdr_size ;
 int svc_max_payload (struct svc_rqst*) ;

__attribute__((used)) static inline u32 nfsd4_read_rsize(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
 u32 maxcount = 0, rlen = 0;

 maxcount = svc_max_payload(rqstp);
 rlen = min(op->u.read.rd_length, maxcount);

 return (op_encode_hdr_size + 2 + XDR_QUADLEN(rlen)) * sizeof(__be32);
}
