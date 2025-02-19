
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_pgio_res {int op_status; int fattr; } ;
typedef enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;


 int NFS3_OK ;
 int decode_nfsstat3 (struct xdr_stream*,int*) ;
 int decode_wcc_data (struct xdr_stream*,int ,int ) ;
 int decode_write3resok (struct xdr_stream*,struct nfs_pgio_res*) ;
 int nfs3_stat_to_errno (int) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nfs3_xdr_dec_write3res(struct rpc_rqst *req, struct xdr_stream *xdr,
      void *data)
{
 struct nfs_pgio_res *result = data;
 enum nfs_stat status;
 int error;

 error = decode_nfsstat3(xdr, &status);
 if (unlikely(error))
  goto out;
 error = decode_wcc_data(xdr, result->fattr, rpc_rqst_userns(req));
 if (unlikely(error))
  goto out;
 result->op_status = status;
 if (status != NFS3_OK)
  goto out_status;
 error = decode_write3resok(xdr, result);
out:
 return error;
out_status:
 return nfs3_stat_to_errno(status);
}
