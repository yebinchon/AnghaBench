
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int MAX_BYTES_SPECIAL_SEG ;
 int * xdr_check_write_chunk (int *,int const*,int ) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static __be32 *xdr_check_reply_chunk(__be32 *p, const __be32 *end)
{
 if (*p++ != xdr_zero) {
  p = xdr_check_write_chunk(p, end, MAX_BYTES_SPECIAL_SEG);
  if (!p)
   return ((void*)0);
 }
 return p;
}
