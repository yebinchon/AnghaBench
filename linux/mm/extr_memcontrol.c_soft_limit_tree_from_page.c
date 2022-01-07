
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct mem_cgroup_tree_per_node {int dummy; } ;
struct TYPE_2__ {struct mem_cgroup_tree_per_node** rb_tree_per_node; } ;


 int page_to_nid (struct page*) ;
 TYPE_1__ soft_limit_tree ;

__attribute__((used)) static struct mem_cgroup_tree_per_node *
soft_limit_tree_from_page(struct page *page)
{
 int nid = page_to_nid(page);

 return soft_limit_tree.rb_tree_per_node[nid];
}
