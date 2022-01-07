
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char const*,unsigned int) ;

int arch__compare_symbol_names_n(const char *namea, const char *nameb,
     unsigned int n)
{

 if (*namea == '.')
  namea++;
 if (*nameb == '.')
  nameb++;

 return strncmp(namea, nameb, n);
}
