
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_set {int dummy; } ;
struct ctl_table_root {struct ctl_table_set* (* lookup ) (struct ctl_table_root*) ;struct ctl_table_set default_set; } ;


 struct ctl_table_set* stub1 (struct ctl_table_root*) ;

__attribute__((used)) static struct ctl_table_set *
lookup_header_set(struct ctl_table_root *root)
{
 struct ctl_table_set *set = &root->default_set;
 if (root->lookup)
  set = root->lookup(root);
 return set;
}
