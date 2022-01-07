
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {int dummy; } ;
struct tomoyo_envp {struct tomoyo_path_info const* value; struct tomoyo_path_info const* name; } ;


 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int tomoyo_correct_word (char*) ;
 struct tomoyo_path_info* tomoyo_get_dqword (char*) ;
 struct tomoyo_path_info* tomoyo_get_name (char*) ;
 int tomoyo_put_name (struct tomoyo_path_info const*) ;

__attribute__((used)) static bool tomoyo_parse_envp(char *left, char *right,
         struct tomoyo_envp *envp)
{
 const struct tomoyo_path_info *name;
 const struct tomoyo_path_info *value;
 char *cp = left + strlen(left) - 1;

 if (*cp-- != ']' || *cp != '"')
  goto out;
 *cp = '\0';
 if (!tomoyo_correct_word(left))
  goto out;
 name = tomoyo_get_name(left);
 if (!name)
  goto out;
 if (!strcmp(right, "NULL")) {
  value = ((void*)0);
 } else {
  value = tomoyo_get_dqword(right);
  if (!value) {
   tomoyo_put_name(name);
   goto out;
  }
 }
 envp->name = name;
 envp->value = value;
 return 1;
out:
 return 0;
}
