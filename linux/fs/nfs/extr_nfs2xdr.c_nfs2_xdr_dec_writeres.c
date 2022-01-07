
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_pgio_res {int op_status; int fattr; TYPE_1__* verf; } ;
struct TYPE_2__ {int committed; } ;


 int NFS_FILE_SYNC ;
 int decode_attrstat (struct xdr_stream*,int ,int *,int ) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;

__attribute__((used)) static int nfs2_xdr_dec_writeres(struct rpc_rqst *req, struct xdr_stream *xdr,
     void *data)
{
 struct nfs_pgio_res *result = data;


 result->verf->committed = NFS_FILE_SYNC;
 return decode_attrstat(xdr, result->fattr, &result->op_status,
   rpc_rqst_userns(req));
}
