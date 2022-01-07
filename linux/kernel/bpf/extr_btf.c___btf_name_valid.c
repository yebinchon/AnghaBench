
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct btf {char* strings; } ;


 int KSYM_NAME_LEN ;
 int __btf_name_char_ok (char const,int,int) ;

__attribute__((used)) static bool __btf_name_valid(const struct btf *btf, u32 offset, bool dot_ok)
{

 const char *src = &btf->strings[offset];
 const char *src_limit;

 if (!__btf_name_char_ok(*src, 1, dot_ok))
  return 0;


 src_limit = src + KSYM_NAME_LEN;
 src++;
 while (*src && src < src_limit) {
  if (!__btf_name_char_ok(*src, 0, dot_ok))
   return 0;
  src++;
 }

 return !*src;
}
