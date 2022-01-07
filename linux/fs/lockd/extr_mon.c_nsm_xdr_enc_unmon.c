
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;


 int encode_mon_id (struct xdr_stream*,void const*) ;

__attribute__((used)) static void nsm_xdr_enc_unmon(struct rpc_rqst *req, struct xdr_stream *xdr,
         const void *argp)
{
 encode_mon_id(xdr, argp);
}
