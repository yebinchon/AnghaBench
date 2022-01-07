
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_condition {scalar_t__ transit; } ;
struct tomoyo_acl_param {char* data; } ;


 char* strchr (char* const,char) ;
 int strcmp (char* const,char*) ;
 scalar_t__ tomoyo_correct_path (char* const) ;
 scalar_t__ tomoyo_get_domainname (struct tomoyo_acl_param*) ;
 scalar_t__ tomoyo_get_name (int ) ;
 int tomoyo_read_token (struct tomoyo_acl_param*) ;

__attribute__((used)) static char *tomoyo_get_transit_preference(struct tomoyo_acl_param *param,
        struct tomoyo_condition *e)
{
 char * const pos = param->data;
 bool flag;

 if (*pos == '<') {
  e->transit = tomoyo_get_domainname(param);
  goto done;
 }
 {
  char *cp = strchr(pos, ' ');

  if (cp)
   *cp = '\0';
  flag = tomoyo_correct_path(pos) || !strcmp(pos, "keep") ||
   !strcmp(pos, "initialize") || !strcmp(pos, "reset") ||
   !strcmp(pos, "child") || !strcmp(pos, "parent");
  if (cp)
   *cp = ' ';
 }
 if (!flag)
  return pos;
 e->transit = tomoyo_get_name(tomoyo_read_token(param));
done:
 if (e->transit)
  return param->data;




 return "/";
}
