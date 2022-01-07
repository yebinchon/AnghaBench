
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs_diropok {int fattr; int fh; } ;


 int decode_fattr (struct xdr_stream*,int ,struct user_namespace*) ;
 int decode_fhandle (struct xdr_stream*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_diropok(struct xdr_stream *xdr, struct nfs_diropok *result,
  struct user_namespace *userns)
{
 int error;

 error = decode_fhandle(xdr, result->fh);
 if (unlikely(error))
  goto out;
 error = decode_fattr(xdr, result->fattr, userns);
out:
 return error;
}
