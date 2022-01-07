
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
typedef int __be32 ;


 unsigned int AFSTOKEN_K5_TIX_MAX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _debug (char*,unsigned int) ;
 int _enter (char*,unsigned int,unsigned int) ;
 int _leave (char*,unsigned int) ;
 int * kmemdup (int const*,unsigned int,int ) ;
 unsigned int ntohl (int const) ;

__attribute__((used)) static int rxrpc_krb5_decode_ticket(u8 **_ticket, u16 *_tktlen,
        const __be32 **_xdr, unsigned int *_toklen)
{
 const __be32 *xdr = *_xdr;
 unsigned int toklen = *_toklen, len, paddedlen;


 if (toklen <= 4)
  return -EINVAL;

 _enter(",{%x},%u", ntohl(xdr[0]), toklen);

 len = ntohl(*xdr++);
 toklen -= 4;
 if (len > AFSTOKEN_K5_TIX_MAX)
  return -EINVAL;
 paddedlen = (len + 3) & ~3;
 if (paddedlen > toklen)
  return -EINVAL;
 *_tktlen = len;

 _debug("ticket len %u", len);

 if (len > 0) {
  *_ticket = kmemdup(xdr, len, GFP_KERNEL);
  if (!*_ticket)
   return -ENOMEM;
  toklen -= paddedlen;
  xdr += paddedlen >> 2;
 }

 *_xdr = xdr;
 *_toklen = toklen;
 _leave(" = 0 [toklen=%u]", toklen);
 return 0;
}
