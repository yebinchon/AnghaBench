
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int EINVAL ;
 scalar_t__ vfat_bad_char (char const) ;

__attribute__((used)) static inline int vfat_is_used_badchars(const wchar_t *s, int len)
{
 int i;

 for (i = 0; i < len; i++)
  if (vfat_bad_char(s[i]))
   return -EINVAL;

 if (s[i - 1] == ' ')
  return -EINVAL;

 return 0;
}
