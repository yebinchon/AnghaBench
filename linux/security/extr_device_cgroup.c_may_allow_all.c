
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {scalar_t__ behavior; } ;


 scalar_t__ DEVCG_DEFAULT_ALLOW ;

__attribute__((used)) static inline int may_allow_all(struct dev_cgroup *parent)
{
 if (!parent)
  return 1;
 return parent->behavior == DEVCG_DEFAULT_ALLOW;
}
