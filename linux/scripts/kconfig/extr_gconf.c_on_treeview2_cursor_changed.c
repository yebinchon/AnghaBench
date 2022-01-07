
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
typedef int gpointer ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkTreeIter ;


 int COL_MENU ;
 int gtk_tree_model_get (int ,int *,int ,struct menu**,int) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int *,int *) ;
 int * gtk_tree_view_get_selection (int *) ;
 int model2 ;
 int text_insert_help (struct menu*) ;

void
on_treeview2_cursor_changed(GtkTreeView * treeview, gpointer user_data)
{
 GtkTreeSelection *selection;
 GtkTreeIter iter;
 struct menu *menu;

 selection = gtk_tree_view_get_selection(treeview);
 if (gtk_tree_selection_get_selected(selection, &model2, &iter)) {
  gtk_tree_model_get(model2, &iter, COL_MENU, &menu, -1);
  text_insert_help(menu);
 }
}
