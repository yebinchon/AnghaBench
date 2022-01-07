
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __end_of_region (char const) ;
 scalar_t__ end_of_str (char const) ;

__attribute__((used)) static const char *bitmap_find_region(const char *str)
{
 while (__end_of_region(*str))
  str++;

 return end_of_str(*str) ? ((void*)0) : str;
}
