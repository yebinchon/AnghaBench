
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs_entry {int eof; int len; char const* name; int ino; int cookie; int prev_cookie; TYPE_1__* fattr; int d_type; int server; int label; int fh; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int valid; int mounted_on_fileid; int fileid; int mode; } ;


 int DT_UNKNOWN ;
 int EAGAIN ;
 int EBADCOOKIE ;
 int NFS_ATTR_FATTR_FILEID ;
 int NFS_ATTR_FATTR_MOUNTED_ON_FILEID ;
 int NFS_ATTR_FATTR_TYPE ;
 int be32_to_cpup (scalar_t__*) ;
 scalar_t__ decode_attr_bitmap (struct xdr_stream*,int *) ;
 scalar_t__ decode_attr_length (struct xdr_stream*,int *,unsigned int*) ;
 scalar_t__ decode_getfattr_attrs (struct xdr_stream*,int *,TYPE_1__*,int ,int *,int ,int ) ;
 int nfs_umode_to_dtype (int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__* xdr_decode_hyper (scalar_t__*,int *) ;
 scalar_t__* xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_zero ;

int nfs4_decode_dirent(struct xdr_stream *xdr, struct nfs_entry *entry,
         bool plus)
{
 unsigned int savep;
 uint32_t bitmap[3] = {0};
 uint32_t len;
 uint64_t new_cookie;
 __be32 *p = xdr_inline_decode(xdr, 4);
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

 p = xdr_inline_decode(xdr, 12);
 if (unlikely(!p))
  return -EAGAIN;
 p = xdr_decode_hyper(p, &new_cookie);
 entry->len = be32_to_cpup(p);

 p = xdr_inline_decode(xdr, entry->len);
 if (unlikely(!p))
  return -EAGAIN;
 entry->name = (const char *) p;






 entry->ino = 1;
 entry->fattr->valid = 0;

 if (decode_attr_bitmap(xdr, bitmap) < 0)
  return -EAGAIN;

 if (decode_attr_length(xdr, &len, &savep) < 0)
  return -EAGAIN;

 if (decode_getfattr_attrs(xdr, bitmap, entry->fattr, entry->fh,
   ((void*)0), entry->label, entry->server) < 0)
  return -EAGAIN;
 if (entry->fattr->valid & NFS_ATTR_FATTR_MOUNTED_ON_FILEID)
  entry->ino = entry->fattr->mounted_on_fileid;
 else if (entry->fattr->valid & NFS_ATTR_FATTR_FILEID)
  entry->ino = entry->fattr->fileid;

 entry->d_type = DT_UNKNOWN;
 if (entry->fattr->valid & NFS_ATTR_FATTR_TYPE)
  entry->d_type = nfs_umode_to_dtype(entry->fattr->mode);

 entry->prev_cookie = entry->cookie;
 entry->cookie = new_cookie;

 return 0;
}
