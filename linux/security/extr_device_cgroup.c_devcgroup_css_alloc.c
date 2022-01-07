
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int dummy; } ;
struct dev_cgroup {struct cgroup_subsys_state css; int behavior; int exceptions; } ;


 int DEVCG_DEFAULT_NONE ;
 int ENOMEM ;
 struct cgroup_subsys_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct dev_cgroup* kzalloc (int,int ) ;

__attribute__((used)) static struct cgroup_subsys_state *
devcgroup_css_alloc(struct cgroup_subsys_state *parent_css)
{
 struct dev_cgroup *dev_cgroup;

 dev_cgroup = kzalloc(sizeof(*dev_cgroup), GFP_KERNEL);
 if (!dev_cgroup)
  return ERR_PTR(-ENOMEM);
 INIT_LIST_HEAD(&dev_cgroup->exceptions);
 dev_cgroup->behavior = DEVCG_DEFAULT_NONE;

 return &dev_cgroup->css;
}
