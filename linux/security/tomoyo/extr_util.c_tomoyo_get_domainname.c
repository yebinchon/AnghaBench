
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {int dummy; } ;
struct tomoyo_acl_param {char* data; } ;


 scalar_t__ tomoyo_correct_domain (char*) ;
 struct tomoyo_path_info const* tomoyo_get_name (char*) ;

const struct tomoyo_path_info *tomoyo_get_domainname
(struct tomoyo_acl_param *param)
{
 char *start = param->data;
 char *pos = start;

 while (*pos) {
  if (*pos++ != ' ' || *pos++ == '/')
   continue;
  pos -= 2;
  *pos++ = '\0';
  break;
 }
 param->data = pos;
 if (tomoyo_correct_domain(start))
  return tomoyo_get_name(start);
 return ((void*)0);
}
