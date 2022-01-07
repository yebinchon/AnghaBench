
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_ops {scalar_t__ cmd; int * doit; int * dumpit; } ;
struct genl_family {unsigned int n_ops; struct genl_ops* ops; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int genl_validate_ops(const struct genl_family *family)
{
 const struct genl_ops *ops = family->ops;
 unsigned int n_ops = family->n_ops;
 int i, j;

 if (WARN_ON(n_ops && !ops))
  return -EINVAL;

 if (!n_ops)
  return 0;

 for (i = 0; i < n_ops; i++) {
  if (ops[i].dumpit == ((void*)0) && ops[i].doit == ((void*)0))
   return -EINVAL;
  for (j = i + 1; j < n_ops; j++)
   if (ops[i].cmd == ops[j].cmd)
    return -EINVAL;
 }

 return 0;
}
