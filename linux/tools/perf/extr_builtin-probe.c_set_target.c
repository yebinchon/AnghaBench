
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_used; int uprobes; scalar_t__ target; } ;


 int ENOMEM ;
 TYPE_1__ params ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int set_target(const char *ptr)
{
 int found = 0;
 const char *buf;
 if (!params.target && ptr && *ptr == '/') {
  params.target = strdup(ptr);
  if (!params.target)
   return -ENOMEM;
  params.target_used = 0;

  found = 1;
  buf = ptr + (strlen(ptr) - 3);

  if (strcmp(buf, ".ko"))
   params.uprobes = 1;

 }

 return found;
}
