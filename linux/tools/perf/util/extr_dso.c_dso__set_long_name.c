
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct dso {int long_name_allocated; char const* long_name; int long_name_len; struct rb_root* root; int rb_node; } ;


 int RB_CLEAR_NODE (int *) ;
 int __dsos__findnew_link_by_longname (struct rb_root*,struct dso*,int *) ;
 int free (char*) ;
 int rb_erase (int *,struct rb_root*) ;
 int strlen (char const*) ;

void dso__set_long_name(struct dso *dso, const char *name, bool name_allocated)
{
 struct rb_root *root = dso->root;

 if (name == ((void*)0))
  return;

 if (dso->long_name_allocated)
  free((char *)dso->long_name);

 if (root) {
  rb_erase(&dso->rb_node, root);




  RB_CLEAR_NODE(&dso->rb_node);
  dso->root = ((void*)0);
 }

 dso->long_name = name;
 dso->long_name_len = strlen(name);
 dso->long_name_allocated = name_allocated;

 if (root)
  __dsos__findnew_link_by_longname(root, dso, ((void*)0));
}
