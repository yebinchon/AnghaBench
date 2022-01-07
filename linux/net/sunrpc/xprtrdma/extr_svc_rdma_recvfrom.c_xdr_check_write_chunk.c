
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int const __be32 ;


 scalar_t__ be32_to_cpup (int ) ;

__attribute__((used)) static __be32 *xdr_check_write_chunk(__be32 *p, const __be32 *end,
         u32 maxlen)
{
 u32 i, segcount;

 segcount = be32_to_cpup(p++);
 for (i = 0; i < segcount; i++) {
  p++;
  if (be32_to_cpup(p++) > maxlen)
   return ((void*)0);
  p += 2;

  if (p > end)
   return ((void*)0);
 }

 return p;
}
