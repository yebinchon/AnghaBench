
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ str_has_prefix (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool synth_field_signed(char *type)
{
 if (str_has_prefix(type, "u"))
  return 0;
 if (strcmp(type, "gfp_t") == 0)
  return 0;

 return 1;
}
