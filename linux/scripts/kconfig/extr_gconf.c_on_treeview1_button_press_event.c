
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct menu {int dummy; } ;
typedef int gpointer ;
typedef int gint ;
typedef int gboolean ;
struct TYPE_3__ {scalar_t__ type; int y; int x; } ;
typedef int GtkWidget ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeView ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;
typedef TYPE_1__ GdkEventButton ;


 int COL_MENU ;
 int FALSE ;
 scalar_t__ GDK_2BUTTON_PRESS ;
 int * GTK_TREE_VIEW (int *) ;
 struct menu* browsed ;
 struct menu* current ;
 int display_tree_part () ;
 int gtk_tree_model_get (int ,int *,int ,struct menu**,int) ;
 int gtk_tree_model_get_iter (int ,int *,int *) ;
 int gtk_tree_view_get_path_at_pos (int *,int ,int ,int **,int **,int *,int *) ;
 int gtk_tree_view_set_cursor (int *,int *,int *,int ) ;
 int gtk_widget_grab_focus (int ) ;
 int gtk_widget_realize (int ) ;
 int model1 ;
 int toggle_sym_value (struct menu*) ;
 int tree2_w ;

gboolean
on_treeview1_button_press_event(GtkWidget * widget,
    GdkEventButton * event, gpointer user_data)
{
 GtkTreeView *view = GTK_TREE_VIEW(widget);
 GtkTreePath *path;
 GtkTreeViewColumn *column;
 GtkTreeIter iter;
 struct menu *menu;

 gint tx = (gint) event->x;
 gint ty = (gint) event->y;
 gint cx, cy;

 gtk_tree_view_get_path_at_pos(view, tx, ty, &path, &column, &cx,
          &cy);
 if (path == ((void*)0))
  return FALSE;

 gtk_tree_model_get_iter(model1, &iter, path);
 gtk_tree_model_get(model1, &iter, COL_MENU, &menu, -1);

 if (event->type == GDK_2BUTTON_PRESS) {
  toggle_sym_value(menu);
  current = menu;
  display_tree_part();
 } else {
  browsed = menu;
  display_tree_part();
 }

 gtk_widget_realize(tree2_w);
 gtk_tree_view_set_cursor(view, path, ((void*)0), FALSE);
 gtk_widget_grab_focus(tree2_w);

 return FALSE;
}
