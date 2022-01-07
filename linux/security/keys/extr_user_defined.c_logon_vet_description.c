
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int logon_vet_description(const char *desc)
{
 char *p;


 p = strchr(desc, ':');
 if (!p)
  return -EINVAL;


 if (p == desc)
  return -EINVAL;

 return 0;
}
