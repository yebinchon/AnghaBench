
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int ntfschar ;


 scalar_t__ le16_to_cpu (int const) ;

int ntfs_ucsncmp(const ntfschar *s1, const ntfschar *s2, size_t n)
{
 u16 c1, c2;
 size_t i;

 for (i = 0; i < n; ++i) {
  c1 = le16_to_cpu(s1[i]);
  c2 = le16_to_cpu(s2[i]);
  if (c1 < c2)
   return -1;
  if (c1 > c2)
   return 1;
  if (!c1)
   break;
 }
 return 0;
}
