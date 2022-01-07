
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nlm_lock {int dummy; } ;
struct nlm_args {int cookie; struct nlm_lock lock; } ;


 int encode_cookie (struct xdr_stream*,int *) ;
 int encode_nlm4_lock (struct xdr_stream*,struct nlm_lock const*) ;

__attribute__((used)) static void nlm4_xdr_enc_unlockargs(struct rpc_rqst *req,
        struct xdr_stream *xdr,
        const void *data)
{
 const struct nlm_args *args = data;
 const struct nlm_lock *lock = &args->lock;

 encode_cookie(xdr, &args->cookie);
 encode_nlm4_lock(xdr, lock);
}
