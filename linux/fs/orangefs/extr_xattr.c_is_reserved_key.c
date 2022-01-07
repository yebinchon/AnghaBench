
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSTEM_ORANGEFS_KEY ;
 size_t SYSTEM_ORANGEFS_KEY_LEN ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

__attribute__((used)) static int is_reserved_key(const char *key, size_t size)
{

 if (size < SYSTEM_ORANGEFS_KEY_LEN)
  return 1;

 return strncmp(key, SYSTEM_ORANGEFS_KEY, SYSTEM_ORANGEFS_KEY_LEN) ? 1 : 0;
}
