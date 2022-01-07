
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prefix; } ;


 int astrcatf (char**,char*,int ,char const*) ;
 scalar_t__ is_absolute_path (char const*) ;
 char* strdup (char const*) ;
 TYPE_1__ subcmd_config ;

char *system_path(const char *path)
{
 char *buf = ((void*)0);

 if (is_absolute_path(path))
  return strdup(path);

 astrcatf(&buf, "%s/%s", subcmd_config.prefix, path);

 return buf;
}
