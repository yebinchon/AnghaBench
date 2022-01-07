
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int parse_comment(const char *file, unsigned long len)
{
 unsigned long i;

 for (i = 2; i < len; i++) {
  if (file[i-1] == '*' && file[i] == '/')
   break;
 }
 return i;
}
