
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

int arch__compare_symbol_names(const char *namea, const char *nameb)
{

 if (*namea == '.')
  namea++;
 if (*nameb == '.')
  nameb++;

 return strcmp(namea, nameb);
}
