
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct freezer {struct cgroup_subsys_state css; } ;


 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct freezer* kzalloc (int,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *
freezer_css_alloc(struct cgroup_subsys_state *parent_css)
{
 struct freezer *freezer;

 freezer = kzalloc(sizeof(struct freezer), GFP_KERNEL);
 if (!freezer)
  return ERR_PTR(-ENOMEM);

 return &freezer->css;
}
