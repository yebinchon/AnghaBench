
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_path_info {char const* name; } ;
struct tomoyo_envp {scalar_t__ is_not; int value; int name; } ;


 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;
 int tomoyo_path_matches_pattern (struct tomoyo_path_info*,int ) ;

__attribute__((used)) static bool tomoyo_envp(const char *env_name, const char *env_value,
   const int envc, const struct tomoyo_envp *envp,
   u8 *checked)
{
 int i;
 struct tomoyo_path_info name;
 struct tomoyo_path_info value;

 name.name = env_name;
 tomoyo_fill_path_info(&name);
 value.name = env_value;
 tomoyo_fill_path_info(&value);
 for (i = 0; i < envc; envp++, checked++, i++) {
  bool result;

  if (!tomoyo_path_matches_pattern(&name, envp->name))
   continue;
  *checked = 1;
  if (envp->value) {
   result = tomoyo_path_matches_pattern(&value,
            envp->value);
   if (envp->is_not)
    result = !result;
  } else {
   result = 1;
   if (!envp->is_not)
    result = !result;
  }
  if (!result)
   return 0;
 }
 return 1;
}
