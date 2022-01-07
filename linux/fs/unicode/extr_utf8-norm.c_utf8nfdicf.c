
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8data {unsigned int maxage; } ;


 int ARRAY_SIZE (struct utf8data const*) ;
 struct utf8data const* utf8nfdicfdata ;

const struct utf8data *utf8nfdicf(unsigned int maxage)
{
 int i = ARRAY_SIZE(utf8nfdicfdata) - 1;

 while (maxage < utf8nfdicfdata[i].maxage)
  i--;
 if (maxage > utf8nfdicfdata[i].maxage)
  return ((void*)0);
 return &utf8nfdicfdata[i];
}
