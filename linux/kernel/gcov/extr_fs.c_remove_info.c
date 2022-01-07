
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int num_loaded; int unloaded_info; int * loaded_info; } ;
struct gcov_info {int dummy; } ;


 int gcov_info_filename (struct gcov_info*) ;
 scalar_t__ gcov_persist ;
 int get_info_index (struct gcov_node*,struct gcov_info*) ;
 int kfree (int *) ;
 int pr_warn (char*,int ) ;
 int remove_node (struct gcov_node*) ;
 int save_info (struct gcov_node*,struct gcov_info*) ;

__attribute__((used)) static void remove_info(struct gcov_node *node, struct gcov_info *info)
{
 int i;

 i = get_info_index(node, info);
 if (i < 0) {
  pr_warn("could not remove '%s' (not found)\n",
   gcov_info_filename(info));
  return;
 }
 if (gcov_persist)
  save_info(node, info);

 node->loaded_info[i] = node->loaded_info[node->num_loaded - 1];
 node->num_loaded--;
 if (node->num_loaded > 0)
  return;

 kfree(node->loaded_info);
 node->loaded_info = ((void*)0);
 node->num_loaded = 0;
 if (!node->unloaded_info)
  remove_node(node);
}
