
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct simple_children {struct config_group group; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 struct simple_children* kzalloc (int,int ) ;
 int simple_children_type ;

__attribute__((used)) static struct config_group *group_children_make_group(
  struct config_group *group, const char *name)
{
 struct simple_children *simple_children;

 simple_children = kzalloc(sizeof(struct simple_children),
      GFP_KERNEL);
 if (!simple_children)
  return ERR_PTR(-ENOMEM);

 config_group_init_type_name(&simple_children->group, name,
        &simple_children_type);

 return &simple_children->group;
}
