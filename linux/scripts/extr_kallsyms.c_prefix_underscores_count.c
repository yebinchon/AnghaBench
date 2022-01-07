
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int prefix_underscores_count(const char *str)
{
 const char *tail = str;

 while (*tail == '_')
  tail++;

 return tail - str;
}
