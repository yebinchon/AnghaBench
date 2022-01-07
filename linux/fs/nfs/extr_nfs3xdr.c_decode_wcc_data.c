
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs_fattr {int dummy; } ;


 int decode_post_op_attr (struct xdr_stream*,struct nfs_fattr*,struct user_namespace*) ;
 int decode_pre_op_attr (struct xdr_stream*,struct nfs_fattr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_wcc_data(struct xdr_stream *xdr, struct nfs_fattr *fattr,
  struct user_namespace *userns)
{
 int error;

 error = decode_pre_op_attr(xdr, fattr);
 if (unlikely(error))
  goto out;
 error = decode_post_op_attr(xdr, fattr, userns);
out:
 return error;
}
