
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct krb5_tagged_data {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _debug (char*,unsigned int) ;
 int _enter (char*,unsigned int,size_t,unsigned int,unsigned int) ;
 int _leave (char*,unsigned int) ;
 struct krb5_tagged_data* kcalloc (unsigned int,int,int ) ;
 unsigned int ntohl (int const) ;
 int rxrpc_krb5_decode_tagged_data (struct krb5_tagged_data*,size_t,int const**,unsigned int*) ;

__attribute__((used)) static int rxrpc_krb5_decode_tagged_array(struct krb5_tagged_data **_td,
       u8 *_n_elem,
       u8 max_n_elem,
       size_t max_elem_size,
       const __be32 **_xdr,
       unsigned int *_toklen)
{
 struct krb5_tagged_data *td;
 const __be32 *xdr = *_xdr;
 unsigned int toklen = *_toklen, n_elem, loop;
 int ret;


 if (toklen < 4)
  return -EINVAL;

 _enter(",,%u,%zu,{%x},%u",
        max_n_elem, max_elem_size, ntohl(xdr[0]), toklen);

 n_elem = ntohl(*xdr++);
 toklen -= 4;
 if (n_elem > max_n_elem)
  return -EINVAL;
 *_n_elem = n_elem;
 if (n_elem > 0) {
  if (toklen <= (n_elem + 1) * 4)
   return -EINVAL;

  _debug("n_elem %d", n_elem);

  td = kcalloc(n_elem, sizeof(struct krb5_tagged_data),
        GFP_KERNEL);
  if (!td)
   return -ENOMEM;
  *_td = td;

  for (loop = 0; loop < n_elem; loop++) {
   ret = rxrpc_krb5_decode_tagged_data(&td[loop],
           max_elem_size,
           &xdr, &toklen);
   if (ret < 0)
    return ret;
  }
 }

 *_xdr = xdr;
 *_toklen = toklen;
 _leave(" = 0 [toklen=%u]", toklen);
 return 0;
}
