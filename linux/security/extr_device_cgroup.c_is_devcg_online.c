
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_cgroup {scalar_t__ behavior; } ;


 scalar_t__ DEVCG_DEFAULT_NONE ;

__attribute__((used)) static inline bool is_devcg_online(const struct dev_cgroup *devcg)
{
 return (devcg->behavior != DEVCG_DEFAULT_NONE);
}
