
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct nfs_entry {int eof; scalar_t__ ino; int cookie; int prev_cookie; int fh; TYPE_2__* fattr; int d_type; int len; int name; TYPE_1__* server; } ;
typedef scalar_t__ __be32 ;
struct TYPE_4__ {int valid; scalar_t__ fileid; scalar_t__ mounted_on_fileid; int mode; } ;
struct TYPE_3__ {int client; } ;


 int DT_UNKNOWN ;
 int E2BIG ;
 int EAGAIN ;
 int EBADCOOKIE ;
 int NFS_ATTR_FATTR_MOUNTED_ON_FILEID ;
 int NFS_ATTR_FATTR_V3 ;
 int decode_cookie3 (struct xdr_stream*,int *) ;
 int decode_fileid3 (struct xdr_stream*,scalar_t__*) ;
 int decode_inline_filename3 (struct xdr_stream*,int *,int *) ;
 int decode_nfs_fh3 (struct xdr_stream*,int ) ;
 int decode_post_op_attr (struct xdr_stream*,TYPE_2__*,struct user_namespace*) ;
 int dprintk (char*) ;
 int nfs_umode_to_dtype (int ) ;
 struct user_namespace* rpc_userns (int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__* xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_zero ;
 int zero_nfs_fh3 (int ) ;

int nfs3_decode_dirent(struct xdr_stream *xdr, struct nfs_entry *entry,
         bool plus)
{
 struct user_namespace *userns = rpc_userns(entry->server->client);
 struct nfs_entry old = *entry;
 __be32 *p;
 int error;
 u64 new_cookie;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EAGAIN;
 if (*p == xdr_zero) {
  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EAGAIN;
  if (*p == xdr_zero)
   return -EAGAIN;
  entry->eof = 1;
  return -EBADCOOKIE;
 }

 error = decode_fileid3(xdr, &entry->ino);
 if (unlikely(error))
  return error;

 error = decode_inline_filename3(xdr, &entry->name, &entry->len);
 if (unlikely(error))
  return error;

 error = decode_cookie3(xdr, &new_cookie);
 if (unlikely(error))
  return error;

 entry->d_type = DT_UNKNOWN;

 if (plus) {
  entry->fattr->valid = 0;
  error = decode_post_op_attr(xdr, entry->fattr, userns);
  if (unlikely(error))
   return error;
  if (entry->fattr->valid & NFS_ATTR_FATTR_V3)
   entry->d_type = nfs_umode_to_dtype(entry->fattr->mode);

  if (entry->fattr->fileid != entry->ino) {
   entry->fattr->mounted_on_fileid = entry->ino;
   entry->fattr->valid |= NFS_ATTR_FATTR_MOUNTED_ON_FILEID;
  }


  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EAGAIN;
  if (*p != xdr_zero) {
   error = decode_nfs_fh3(xdr, entry->fh);
   if (unlikely(error)) {
    if (error == -E2BIG)
     goto out_truncated;
    return error;
   }
  } else
   zero_nfs_fh3(entry->fh);
 }

 entry->prev_cookie = entry->cookie;
 entry->cookie = new_cookie;

 return 0;

out_truncated:
 dprintk("NFS: directory entry contains invalid file handle\n");
 *entry = old;
 return -EAGAIN;
}
