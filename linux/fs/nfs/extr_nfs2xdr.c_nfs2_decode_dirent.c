
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_entry {int eof; int d_type; void* cookie; void* prev_cookie; int len; int name; void* ino; } ;
typedef int __be32 ;


 int DT_UNKNOWN ;
 int EAGAIN ;
 int EBADCOOKIE ;
 void* be32_to_cpup (int *) ;
 int decode_filename_inline (struct xdr_stream*,int *,int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_zero ;

int nfs2_decode_dirent(struct xdr_stream *xdr, struct nfs_entry *entry,
         bool plus)
{
 __be32 *p;
 int error;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EAGAIN;
 if (*p++ == xdr_zero) {
  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EAGAIN;
  if (*p++ == xdr_zero)
   return -EAGAIN;
  entry->eof = 1;
  return -EBADCOOKIE;
 }

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EAGAIN;
 entry->ino = be32_to_cpup(p);

 error = decode_filename_inline(xdr, &entry->name, &entry->len);
 if (unlikely(error))
  return error;





 entry->prev_cookie = entry->cookie;
 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EAGAIN;
 entry->cookie = be32_to_cpup(p);

 entry->d_type = DT_UNKNOWN;

 return 0;
}
