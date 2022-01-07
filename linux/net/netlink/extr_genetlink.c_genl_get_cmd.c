
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct genl_ops {scalar_t__ cmd; } ;
struct genl_family {int n_ops; struct genl_ops const* ops; } ;



__attribute__((used)) static const struct genl_ops *genl_get_cmd(u8 cmd,
        const struct genl_family *family)
{
 int i;

 for (i = 0; i < family->n_ops; i++)
  if (family->ops[i].cmd == cmd)
   return &family->ops[i];

 return ((void*)0);
}
