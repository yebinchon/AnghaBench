
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
typedef scalar_t__ gboolean ;
typedef int GtkTreeIter ;


 int found ;
 int gtk_tree_model_get (int ,int *,int,struct menu**,int) ;
 scalar_t__ gtk_tree_model_iter_children (int ,int *,int *) ;
 scalar_t__ gtk_tree_model_iter_next (int ,int *) ;
 int memcpy (int *,int *,int) ;
 int model2 ;

__attribute__((used)) static GtkTreeIter *gtktree_iter_find_node(GtkTreeIter *parent,
        struct menu *tofind)
{
 GtkTreeIter iter;
 GtkTreeIter *child = &iter;
 gboolean valid;
 GtkTreeIter *ret;

 valid = gtk_tree_model_iter_children(model2, child, parent);
 while (valid) {
  struct menu *menu;

  gtk_tree_model_get(model2, child, 6, &menu, -1);

  if (menu == tofind) {
   memcpy(&found, child, sizeof(GtkTreeIter));
   return &found;
  }

  ret = gtktree_iter_find_node(child, tofind);
  if (ret)
   return ret;

  valid = gtk_tree_model_iter_next(model2, child);
 }

 return ((void*)0);
}
