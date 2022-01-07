
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;


 int nfs4_xdr_dec_create (struct rpc_rqst*,struct xdr_stream*,void*) ;

__attribute__((used)) static int nfs4_xdr_dec_symlink(struct rpc_rqst *rqstp, struct xdr_stream *xdr,
    void *res)
{
 return nfs4_xdr_dec_create(rqstp, xdr, res);
}
