
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int const __be32 ;


 scalar_t__ MAX_BYTES_SPECIAL_SEG ;
 scalar_t__ be32_to_cpup (int ) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static __be32 *xdr_check_read_list(__be32 *p, const __be32 *end)
{
 u32 position;
 bool first;

 first = 1;
 while (*p++ != xdr_zero) {
  if (first) {
   position = be32_to_cpup(p++);
   first = 0;
  } else if (be32_to_cpup(p++) != position) {
   return ((void*)0);
  }
  p++;
  if (be32_to_cpup(p++) > MAX_BYTES_SPECIAL_SEG)
   return ((void*)0);
  p += 2;

  if (p > end)
   return ((void*)0);
 }
 return p;
}
