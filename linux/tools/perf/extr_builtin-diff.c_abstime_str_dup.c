
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ time_str; } ;


 int ENOMEM ;
 TYPE_1__ pdiff ;
 scalar_t__ strchr (scalar_t__,char) ;
 char* strdup (scalar_t__) ;

__attribute__((used)) static int abstime_str_dup(char **pstr)
{
 char *str = ((void*)0);

 if (pdiff.time_str && strchr(pdiff.time_str, ':')) {
  str = strdup(pdiff.time_str);
  if (!str)
   return -ENOMEM;
 }

 *pstr = str;
 return 0;
}
