
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fmt; } ;


 int COMP_ID__NONE ;
 TYPE_1__* compressions ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int is_supported_compression(const char *ext)
{
 unsigned i;

 for (i = 1; compressions[i].fmt; i++) {
  if (!strcmp(ext, compressions[i].fmt))
   return i;
 }
 return COMP_ID__NONE;
}
