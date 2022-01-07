
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int num_loaded; struct gcov_info** loaded_info; struct gcov_info* unloaded_info; } ;
struct gcov_info {int dummy; } ;


 int GFP_KERNEL ;
 int gcov_info_filename (struct gcov_info*) ;
 int gcov_info_free (struct gcov_info*) ;
 int gcov_info_is_compatible (struct gcov_info*,struct gcov_info*) ;
 struct gcov_info** kcalloc (int,int,int ) ;
 int kfree (struct gcov_info**) ;
 int memcpy (struct gcov_info**,struct gcov_info**,int) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static void add_info(struct gcov_node *node, struct gcov_info *info)
{
 struct gcov_info **loaded_info;
 int num = node->num_loaded;






 loaded_info = kcalloc(num + 1, sizeof(struct gcov_info *), GFP_KERNEL);
 if (!loaded_info) {
  pr_warn("could not add '%s' (out of memory)\n",
   gcov_info_filename(info));
  return;
 }
 memcpy(loaded_info, node->loaded_info,
        num * sizeof(struct gcov_info *));
 loaded_info[num] = info;

 if (num == 0) {




  if (!gcov_info_is_compatible(node->unloaded_info, info)) {
   pr_warn("discarding saved data for %s "
    "(incompatible version)\n",
    gcov_info_filename(info));
   gcov_info_free(node->unloaded_info);
   node->unloaded_info = ((void*)0);
  }
 } else {




  if (!gcov_info_is_compatible(node->loaded_info[0], info)) {
   pr_warn("could not add '%s' (incompatible "
    "version)\n", gcov_info_filename(info));
   kfree(loaded_info);
   return;
  }
 }

 kfree(node->loaded_info);
 node->loaded_info = loaded_info;
 node->num_loaded = num + 1;
}
