
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs3_diropres {int dir_attr; TYPE_2__* fattr; TYPE_1__* fh; } ;
struct TYPE_4__ {scalar_t__ valid; } ;
struct TYPE_3__ {scalar_t__ size; } ;


 int decode_post_op_attr (struct xdr_stream*,TYPE_2__*,struct user_namespace*) ;
 int decode_post_op_fh3 (struct xdr_stream*,TYPE_1__*) ;
 int decode_wcc_data (struct xdr_stream*,int ,struct user_namespace*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_create3resok(struct xdr_stream *xdr,
          struct nfs3_diropres *result,
          struct user_namespace *userns)
{
 int error;

 error = decode_post_op_fh3(xdr, result->fh);
 if (unlikely(error))
  goto out;
 error = decode_post_op_attr(xdr, result->fattr, userns);
 if (unlikely(error))
  goto out;




 if (result->fh->size == 0)
  result->fattr->valid = 0;
 error = decode_wcc_data(xdr, result->dir_attr, userns);
out:
 return error;
}
