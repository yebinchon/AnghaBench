
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd4_op {int dummy; } ;
typedef int __be32 ;


 scalar_t__ PAGE_SIZE ;
 int op_encode_hdr_size ;

__attribute__((used)) static inline u32 nfsd4_readlink_rsize(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
 return (op_encode_hdr_size + 1) * sizeof(__be32) + PAGE_SIZE;
}
