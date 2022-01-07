
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md4_ctx {int dummy; } ;


 int add_char (char const,struct md4_ctx*) ;

__attribute__((used)) static int parse_string(const char *file, unsigned long len,
   struct md4_ctx *md)
{
 unsigned long i;

 add_char(file[0], md);
 for (i = 1; i < len; i++) {
  add_char(file[i], md);
  if (file[i] == '"' && file[i-1] != '\\')
   break;
 }
 return i;
}
