
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_not(const char *str)
{
 switch (str[1]) {
 case '=':
 case '~':
  return 0;
 }
 return 1;
}
