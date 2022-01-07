
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cgroup_subsys_state {TYPE_1__* cgroup; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static u64 read_prioidx(struct cgroup_subsys_state *css, struct cftype *cft)
{
 return css->cgroup->id;
}
