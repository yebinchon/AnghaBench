
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ntfschar ;
typedef scalar_t__ IGNORE_CASE_BOOL ;


 scalar_t__ const CASE_SENSITIVE ;
 int ntfs_ucsncasecmp (int const*,int const*,size_t,int const*,int const) ;
 int ntfs_ucsncmp (int const*,int const*,size_t) ;

bool ntfs_are_names_equal(const ntfschar *s1, size_t s1_len,
  const ntfschar *s2, size_t s2_len, const IGNORE_CASE_BOOL ic,
  const ntfschar *upcase, const u32 upcase_size)
{
 if (s1_len != s2_len)
  return 0;
 if (ic == CASE_SENSITIVE)
  return !ntfs_ucsncmp(s1, s2, s1_len);
 return !ntfs_ucsncasecmp(s1, s2, s1_len, upcase, upcase_size);
}
