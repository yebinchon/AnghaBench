
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_exception_item {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct dev_cgroup {int behavior; TYPE_1__ css; } ;


 struct dev_cgroup* css_to_devcgroup (int ) ;
 int verify_new_ex (struct dev_cgroup*,struct dev_exception_item*,int ) ;

__attribute__((used)) static int parent_has_perm(struct dev_cgroup *childcg,
      struct dev_exception_item *ex)
{
 struct dev_cgroup *parent = css_to_devcgroup(childcg->css.parent);

 if (!parent)
  return 1;
 return verify_new_ex(parent, ex, childcg->behavior);
}
