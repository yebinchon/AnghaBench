
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;


 int ARRAY_SIZE (char**) ;
 int EINVAL ;
 char** kobject_actions ;
 char* strnchr (char const*,size_t,char) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static int kobject_action_type(const char *buf, size_t count,
          enum kobject_action *type,
          const char **args)
{
 enum kobject_action action;
 size_t count_first;
 const char *args_start;
 int ret = -EINVAL;

 if (count && (buf[count-1] == '\n' || buf[count-1] == '\0'))
  count--;

 if (!count)
  goto out;

 args_start = strnchr(buf, count, ' ');
 if (args_start) {
  count_first = args_start - buf;
  args_start = args_start + 1;
 } else
  count_first = count;

 for (action = 0; action < ARRAY_SIZE(kobject_actions); action++) {
  if (strncmp(kobject_actions[action], buf, count_first) != 0)
   continue;
  if (kobject_actions[action][count_first] != '\0')
   continue;
  if (args)
   *args = args_start;
  *type = action;
  ret = 0;
  break;
 }
out:
 return ret;
}
