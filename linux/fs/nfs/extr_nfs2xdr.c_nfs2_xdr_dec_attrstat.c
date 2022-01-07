
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;


 int decode_attrstat (struct xdr_stream*,void*,int *,int ) ;
 int rpc_rqst_userns (struct rpc_rqst*) ;

__attribute__((used)) static int nfs2_xdr_dec_attrstat(struct rpc_rqst *req, struct xdr_stream *xdr,
     void *result)
{
 return decode_attrstat(xdr, result, ((void*)0), rpc_rqst_userns(req));
}
