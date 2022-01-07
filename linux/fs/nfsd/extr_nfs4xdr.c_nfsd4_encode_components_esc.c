
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {TYPE_1__* buf; } ;
typedef int __be32 ;
struct TYPE_2__ {int len; } ;


 int dprintk (char*,char*) ;
 int htonl (int) ;
 int nfserr_resource ;
 int write_bytes_to_xdr_buf (TYPE_1__*,int,int *,int) ;
 int * xdr_encode_opaque (int *,char*,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 nfsd4_encode_components_esc(struct xdr_stream *xdr, char sep,
       char *components, char esc_enter,
       char esc_exit)
{
 __be32 *p;
 __be32 pathlen;
 int pathlen_offset;
 int strlen, count=0;
 char *str, *end, *next;

 dprintk("nfsd4_encode_components(%s)\n", components);

 pathlen_offset = xdr->buf->len;
 p = xdr_reserve_space(xdr, 4);
 if (!p)
  return nfserr_resource;
 p++;

 end = str = components;
 while (*end) {
  bool found_esc = 0;


  if (*str == esc_enter) {
   for (; *end && (*end != esc_exit); end++)
                                        ;
   next = end + 1;
   if (*end && (!*next || *next == sep)) {
    str++;
    found_esc = 1;
   }
  }

  if (!found_esc)
   for (; *end && (*end != sep); end++)
                                   ;

  strlen = end - str;
  if (strlen) {
   p = xdr_reserve_space(xdr, strlen + 4);
   if (!p)
    return nfserr_resource;
   p = xdr_encode_opaque(p, str, strlen);
   count++;
  }
  else
   end++;
  if (found_esc)
   end = next;

  str = end;
 }
 pathlen = htonl(count);
 write_bytes_to_xdr_buf(xdr->buf, pathlen_offset, &pathlen, 4);
 return 0;
}
