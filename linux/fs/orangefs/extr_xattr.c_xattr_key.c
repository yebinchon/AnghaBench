
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int xattr_key(const char *key)
{
 unsigned int i = 0;
 while (key)
  i += *key++;
 return i % 16;
}
