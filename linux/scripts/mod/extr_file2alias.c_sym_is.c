
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char const*,char const*,unsigned int) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static bool sym_is(const char *name, unsigned namelen, const char *symbol)
{
 if (namelen != strlen(symbol))
  return 0;

 return memcmp(name, symbol, namelen) == 0;
}
