
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_exception_item {int access; int minor; int major; int type; } ;
struct TYPE_2__ {int parent; } ;
struct dev_cgroup {scalar_t__ behavior; int exceptions; TYPE_1__ css; } ;


 scalar_t__ DEVCG_DEFAULT_DENY ;
 struct dev_cgroup* css_to_devcgroup (int ) ;
 int match_exception_partial (int *,int ,int ,int ,int ) ;

__attribute__((used)) static bool parent_allows_removal(struct dev_cgroup *childcg,
      struct dev_exception_item *ex)
{
 struct dev_cgroup *parent = css_to_devcgroup(childcg->css.parent);

 if (!parent)
  return 1;


 if (childcg->behavior == DEVCG_DEFAULT_DENY)
  return 1;





 return !match_exception_partial(&parent->exceptions, ex->type,
     ex->major, ex->minor, ex->access);
}
