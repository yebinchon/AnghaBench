
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs_diropok {int dummy; } ;
typedef enum nfs_stat { ____Placeholder_nfs_stat } nfs_stat ;


 int NFS_OK ;
 int decode_diropok (struct xdr_stream*,struct nfs_diropok*,struct user_namespace*) ;
 int decode_stat (struct xdr_stream*,int*) ;
 int nfs_stat_to_errno (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int decode_diropres(struct xdr_stream *xdr, struct nfs_diropok *result,
  struct user_namespace *userns)
{
 enum nfs_stat status;
 int error;

 error = decode_stat(xdr, &status);
 if (unlikely(error))
  goto out;
 if (status != NFS_OK)
  goto out_default;
 error = decode_diropok(xdr, result, userns);
out:
 return error;
out_default:
 return nfs_stat_to_errno(status);
}
