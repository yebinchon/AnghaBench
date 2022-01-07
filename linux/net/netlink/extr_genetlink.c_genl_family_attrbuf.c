
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct genl_family {struct nlattr** attrbuf; int parallel_ops; } ;


 int WARN_ON (int ) ;
 int genl_mutex ;
 int lockdep_assert_held (int *) ;

struct nlattr **genl_family_attrbuf(const struct genl_family *family)
{
 if (!WARN_ON(family->parallel_ops))
  lockdep_assert_held(&genl_mutex);

 return family->attrbuf;
}
