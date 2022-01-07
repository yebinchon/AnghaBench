
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs3_readdirres {int verf; int dir_attr; } ;


 int decode_cookieverf3 (struct xdr_stream*,int ) ;
 int decode_dirlist3 (struct xdr_stream*) ;
 int decode_post_op_attr (struct xdr_stream*,int ,struct user_namespace*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_readdir3resok(struct xdr_stream *xdr,
    struct nfs3_readdirres *result,
    struct user_namespace *userns)
{
 int error;

 error = decode_post_op_attr(xdr, result->dir_attr, userns);
 if (unlikely(error))
  goto out;

 error = decode_cookieverf3(xdr, result->verf);
 if (unlikely(error))
  goto out;
 error = decode_dirlist3(xdr);
out:
 return error;
}
