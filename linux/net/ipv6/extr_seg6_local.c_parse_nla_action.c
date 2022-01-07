
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int headroom; struct seg6_action_desc* desc; int action; } ;
struct seg6_action_param {int (* parse ) (struct nlattr**,struct seg6_local_lwt*) ;} ;
struct seg6_action_desc {int attrs; scalar_t__ static_headroom; int input; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int SEG6_LOCAL_MAX ;
 struct seg6_action_desc* __get_action_desc (int ) ;
 struct seg6_action_param* seg6_action_params ;
 int stub1 (struct nlattr**,struct seg6_local_lwt*) ;

__attribute__((used)) static int parse_nla_action(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 struct seg6_action_param *param;
 struct seg6_action_desc *desc;
 int i, err;

 desc = __get_action_desc(slwt->action);
 if (!desc)
  return -EINVAL;

 if (!desc->input)
  return -EOPNOTSUPP;

 slwt->desc = desc;
 slwt->headroom += desc->static_headroom;

 for (i = 0; i < SEG6_LOCAL_MAX + 1; i++) {
  if (desc->attrs & (1 << i)) {
   if (!attrs[i])
    return -EINVAL;

   param = &seg6_action_params[i];

   err = param->parse(attrs, slwt);
   if (err < 0)
    return err;
  }
 }

 return 0;
}
