
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int num_loaded; scalar_t__* loaded_info; scalar_t__ unloaded_info; } ;
struct gcov_info {int dummy; } ;


 int gcov_info_add (struct gcov_info*,scalar_t__) ;
 struct gcov_info* gcov_info_dup (scalar_t__) ;

__attribute__((used)) static struct gcov_info *get_accumulated_info(struct gcov_node *node)
{
 struct gcov_info *info;
 int i = 0;

 if (node->unloaded_info)
  info = gcov_info_dup(node->unloaded_info);
 else
  info = gcov_info_dup(node->loaded_info[i++]);
 if (!info)
  return ((void*)0);
 for (; i < node->num_loaded; i++)
  gcov_info_add(info, node->loaded_info[i]);

 return info;
}
