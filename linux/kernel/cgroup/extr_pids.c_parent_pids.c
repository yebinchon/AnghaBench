
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct pids_cgroup {TYPE_1__ css; } ;


 struct pids_cgroup* css_pids (int ) ;

__attribute__((used)) static struct pids_cgroup *parent_pids(struct pids_cgroup *pids)
{
 return css_pids(pids->css.parent);
}
