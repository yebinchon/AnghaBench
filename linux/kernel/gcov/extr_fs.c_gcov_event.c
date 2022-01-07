
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int dummy; } ;
struct gcov_info {int dummy; } ;
typedef enum gcov_action { ____Placeholder_gcov_action } gcov_action ;




 int add_info (struct gcov_node*,struct gcov_info*) ;
 int add_node (struct gcov_info*) ;
 int gcov_info_filename (struct gcov_info*) ;
 struct gcov_node* get_node_by_name (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int node_lock ;
 int pr_warn (char*,int ) ;
 int remove_info (struct gcov_node*,struct gcov_info*) ;

void gcov_event(enum gcov_action action, struct gcov_info *info)
{
 struct gcov_node *node;

 mutex_lock(&node_lock);
 node = get_node_by_name(gcov_info_filename(info));
 switch (action) {
 case 129:
  if (node)
   add_info(node, info);
  else
   add_node(info);
  break;
 case 128:
  if (node)
   remove_info(node, info);
  else {
   pr_warn("could not remove '%s' (not found)\n",
    gcov_info_filename(info));
  }
  break;
 }
 mutex_unlock(&node_lock);
}
