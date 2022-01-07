
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;


 int xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void nfs4_xdr_enc_cb_null(struct rpc_rqst *req, struct xdr_stream *xdr,
     const void *__unused)
{
 xdr_reserve_space(xdr, 0);
}
