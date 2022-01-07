
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef int GtkTreeViewColumn ;


 scalar_t__ COL_NUMBER ;
 int GTK_TREE_VIEW (int ) ;
 int * gtk_tree_view_get_column (int ,scalar_t__) ;
 int tree2_w ;

__attribute__((used)) static gint column2index(GtkTreeViewColumn * column)
{
 gint i;

 for (i = 0; i < COL_NUMBER; i++) {
  GtkTreeViewColumn *col;

  col = gtk_tree_view_get_column(GTK_TREE_VIEW(tree2_w), i);
  if (col == column)
   return i;
 }

 return -1;
}
