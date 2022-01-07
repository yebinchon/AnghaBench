
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool audit_string_contains_control(const char *string, size_t len)
{
 const unsigned char *p;
 for (p = string; p < (const unsigned char *)string + len; p++) {
  if (*p == '"' || *p < 0x21 || *p > 0x7e)
   return 1;
 }
 return 0;
}
