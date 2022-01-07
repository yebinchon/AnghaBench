
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int ssize_t ;
typedef int gfp_t ;


 int ENOMEM ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,void*,int) ;
 int strlen (char*) ;
 int xdr_stream_decode_opaque_inline (struct xdr_stream*,void**,size_t) ;

ssize_t xdr_stream_decode_string_dup(struct xdr_stream *xdr, char **str,
  size_t maxlen, gfp_t gfp_flags)
{
 void *p;
 ssize_t ret;

 ret = xdr_stream_decode_opaque_inline(xdr, &p, maxlen);
 if (ret > 0) {
  char *s = kmalloc(ret + 1, gfp_flags);
  if (s != ((void*)0)) {
   memcpy(s, p, ret);
   s[ret] = '\0';
   *str = s;
   return strlen(s);
  }
  ret = -ENOMEM;
 }
 *str = ((void*)0);
 return ret;
}
