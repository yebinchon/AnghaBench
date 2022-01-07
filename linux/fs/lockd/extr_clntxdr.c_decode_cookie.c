
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nlm_cookie {int len; int data; } ;
typedef int __be32 ;


 int EIO ;
 int NLM_MAXCOOKIELEN ;
 int be32_to_cpup (int ) ;
 int dprintk (char*,int) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_cookie(struct xdr_stream *xdr,
    struct nlm_cookie *cookie)
{
 u32 length;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  goto out_overflow;
 length = be32_to_cpup(p++);

 if (length == 0)
  goto out_hpux;
 if (length > NLM_MAXCOOKIELEN)
  goto out_size;
 p = xdr_inline_decode(xdr, length);
 if (unlikely(p == ((void*)0)))
  goto out_overflow;
 cookie->len = length;
 memcpy(cookie->data, p, length);
 return 0;
out_hpux:
 cookie->len = 4;
 memset(cookie->data, 0, 4);
 return 0;
out_size:
 dprintk("NFS: returned cookie was too long: %u\n", length);
 return -EIO;
out_overflow:
 return -EIO;
}
