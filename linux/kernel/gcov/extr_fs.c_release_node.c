
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {scalar_t__ unloaded_info; struct gcov_node* loaded_info; int dentry; int all; int list; } ;


 int debugfs_remove (int ) ;
 int gcov_info_free (scalar_t__) ;
 int kfree (struct gcov_node*) ;
 int list_del (int *) ;
 int remove_links (struct gcov_node*) ;

__attribute__((used)) static void release_node(struct gcov_node *node)
{
 list_del(&node->list);
 list_del(&node->all);
 debugfs_remove(node->dentry);
 remove_links(node);
 kfree(node->loaded_info);
 if (node->unloaded_info)
  gcov_info_free(node->unloaded_info);
 kfree(node);
}
