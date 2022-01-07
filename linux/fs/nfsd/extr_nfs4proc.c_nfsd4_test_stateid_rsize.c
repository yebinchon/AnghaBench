
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct TYPE_3__ {int ts_num_ids; } ;
struct TYPE_4__ {TYPE_1__ test_stateid; } ;
struct nfsd4_op {TYPE_2__ u; } ;
typedef int __be32 ;


 int op_encode_hdr_size ;

__attribute__((used)) static inline u32 nfsd4_test_stateid_rsize(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
 return (op_encode_hdr_size + 1 + op->u.test_stateid.ts_num_ids)
  * sizeof(__be32);
}
