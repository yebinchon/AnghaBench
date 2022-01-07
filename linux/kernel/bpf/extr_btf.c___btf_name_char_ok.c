
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char) ;
 int isalpha (char) ;

__attribute__((used)) static bool __btf_name_char_ok(char c, bool first, bool dot_ok)
{
 if ((first ? !isalpha(c) :
       !isalnum(c)) &&
     c != '_' &&
     ((c == '.' && !dot_ok) ||
       c != '.'))
  return 0;
 return 1;
}
