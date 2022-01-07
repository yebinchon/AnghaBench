
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_tagged_data {unsigned int data_len; void* tag; int data; } ;
typedef int __be32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _debug (char*,void*,unsigned int) ;
 int _enter (char*,size_t,void*,void*,unsigned int) ;
 int _leave (char*,unsigned int) ;
 int kmemdup (int const*,unsigned int,int ) ;
 void* ntohl (int const) ;

__attribute__((used)) static int rxrpc_krb5_decode_tagged_data(struct krb5_tagged_data *td,
      size_t max_data_size,
      const __be32 **_xdr,
      unsigned int *_toklen)
{
 const __be32 *xdr = *_xdr;
 unsigned int toklen = *_toklen, len, paddedlen;


 if (toklen <= 8)
  return -EINVAL;

 _enter(",%zu,{%x,%x},%u",
        max_data_size, ntohl(xdr[0]), ntohl(xdr[1]), toklen);

 td->tag = ntohl(*xdr++);
 len = ntohl(*xdr++);
 toklen -= 8;
 if (len > max_data_size)
  return -EINVAL;
 paddedlen = (len + 3) & ~3;
 if (paddedlen > toklen)
  return -EINVAL;
 td->data_len = len;

 if (len > 0) {
  td->data = kmemdup(xdr, len, GFP_KERNEL);
  if (!td->data)
   return -ENOMEM;
  toklen -= paddedlen;
  xdr += paddedlen >> 2;
 }

 _debug("tag %x len %x", td->tag, td->data_len);

 *_xdr = xdr;
 *_toklen = toklen;
 _leave(" = 0 [toklen=%u]", toklen);
 return 0;
}
