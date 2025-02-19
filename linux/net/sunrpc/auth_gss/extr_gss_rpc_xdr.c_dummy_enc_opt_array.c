
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_option_array {scalar_t__ count; } ;
typedef scalar_t__ __be32 ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__* xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int dummy_enc_opt_array(struct xdr_stream *xdr,
    const struct gssx_option_array *oa)
{
 __be32 *p;

 if (oa->count != 0)
  return -EINVAL;

 p = xdr_reserve_space(xdr, 4);
 if (!p)
  return -ENOSPC;
 *p = 0;

 return 0;
}
