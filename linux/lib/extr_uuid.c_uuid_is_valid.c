
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UUID_STRING_LEN ;
 int isxdigit (char const) ;

bool uuid_is_valid(const char *uuid)
{
 unsigned int i;

 for (i = 0; i < UUID_STRING_LEN; i++) {
  if (i == 8 || i == 13 || i == 18 || i == 23) {
   if (uuid[i] != '-')
    return 0;
  } else if (!isxdigit(uuid[i])) {
   return 0;
  }
 }

 return 1;
}
