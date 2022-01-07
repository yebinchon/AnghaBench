
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct simple_child {struct config_item item; scalar_t__ storeme; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct simple_child* kzalloc (int,int ) ;
 int simple_child_type ;

__attribute__((used)) static struct config_item *simple_children_make_item(struct config_group *group,
  const char *name)
{
 struct simple_child *simple_child;

 simple_child = kzalloc(sizeof(struct simple_child), GFP_KERNEL);
 if (!simple_child)
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&simple_child->item, name,
       &simple_child_type);

 simple_child->storeme = 0;

 return &simple_child->item;
}
