
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* from; char* to; } ;
typedef TYPE_1__ substring_t ;


 int EINVAL ;
 int RDMACG_MAX_STR ;
 int RDMACG_RESOURCE_MAX ;
 int S32_MAX ;
 int match_int (TYPE_1__*,int*) ;
 int match_string (int ,int ,char*) ;
 int rdmacg_resource_names ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,int ,size_t) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int parse_resource(char *c, int *intval)
{
 substring_t argstr;
 char *name, *value = c;
 size_t len;
 int ret, i;

 name = strsep(&value, "=");
 if (!name || !value)
  return -EINVAL;

 i = match_string(rdmacg_resource_names, RDMACG_RESOURCE_MAX, name);
 if (i < 0)
  return i;

 len = strlen(value);

 argstr.from = value;
 argstr.to = value + len;

 ret = match_int(&argstr, intval);
 if (ret >= 0) {
  if (*intval < 0)
   return -EINVAL;
  return i;
 }
 if (strncmp(value, RDMACG_MAX_STR, len) == 0) {
  *intval = S32_MAX;
  return i;
 }
 return -EINVAL;
}
