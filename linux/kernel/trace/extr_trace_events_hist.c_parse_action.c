
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_attrs {size_t n_actions; int * action_str; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HIST_ACTIONS_MAX ;
 int kstrdup (char*,int ) ;
 scalar_t__ str_has_prefix (char*,char*) ;

__attribute__((used)) static int parse_action(char *str, struct hist_trigger_attrs *attrs)
{
 int ret = -EINVAL;

 if (attrs->n_actions >= HIST_ACTIONS_MAX)
  return ret;

 if ((str_has_prefix(str, "onmatch(")) ||
     (str_has_prefix(str, "onmax(")) ||
     (str_has_prefix(str, "onchange("))) {
  attrs->action_str[attrs->n_actions] = kstrdup(str, GFP_KERNEL);
  if (!attrs->action_str[attrs->n_actions]) {
   ret = -ENOMEM;
   return ret;
  }
  attrs->n_actions++;
  ret = 0;
 }
 return ret;
}
