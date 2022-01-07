
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int UNICODE_AGE (int ,int ,int ) ;
 unsigned int* utf8agetab ;

int utf8version_is_supported(u8 maj, u8 min, u8 rev)
{
 int i = ARRAY_SIZE(utf8agetab) - 1;
 unsigned int sb_utf8version = UNICODE_AGE(maj, min, rev);

 while (i >= 0 && utf8agetab[i] != 0) {
  if (sb_utf8version == utf8agetab[i])
   return 1;
  i--;
 }
 return 0;
}
