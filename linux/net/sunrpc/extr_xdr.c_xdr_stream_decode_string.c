
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef size_t ssize_t ;


 int memcpy (char*,void*,size_t) ;
 size_t strlen (char*) ;
 size_t xdr_stream_decode_opaque_inline (struct xdr_stream*,void**,size_t) ;

ssize_t xdr_stream_decode_string(struct xdr_stream *xdr, char *str, size_t size)
{
 ssize_t ret;
 void *p;

 ret = xdr_stream_decode_opaque_inline(xdr, &p, size);
 if (ret > 0) {
  memcpy(str, p, ret);
  str[ret] = '\0';
  return strlen(str);
 }
 *str = '\0';
 return ret;
}
