
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_name_attr_array {scalar_t__ count; } ;
typedef scalar_t__ __be32 ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__* xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int dummy_enc_nameattr_array(struct xdr_stream *xdr,
        struct gssx_name_attr_array *naa)
{
 __be32 *p;

 if (naa->count != 0)
  return -EINVAL;

 p = xdr_reserve_space(xdr, 4);
 if (!p)
  return -ENOSPC;
 *p = 0;

 return 0;
}
