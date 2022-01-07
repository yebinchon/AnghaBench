
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {char* name; } ;


 scalar_t__ streq (char*,char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static bool prop_is_gpio(struct property *prop)
{
 char *str;





 if (strstr(prop->name, "nr-gpio"))
  return 0;

 str = strrchr(prop->name, '-');
 if (str)
  str++;
 else
  str = prop->name;
 if (!(streq(str, "gpios") || streq(str, "gpio")))
  return 0;

 return 1;
}
