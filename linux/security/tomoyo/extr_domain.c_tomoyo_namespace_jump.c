
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int const) ;
 TYPE_1__* tomoyo_current_namespace () ;

__attribute__((used)) static bool tomoyo_namespace_jump(const char *domainname)
{
 const char *namespace = tomoyo_current_namespace()->name;
 const int len = strlen(namespace);

 return strncmp(domainname, namespace, len) ||
  (domainname[len] && domainname[len] != ' ');
}
