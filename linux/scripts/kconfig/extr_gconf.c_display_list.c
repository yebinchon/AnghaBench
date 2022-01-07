
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GTK_TREE_VIEW (int ) ;
 int display_tree (int *) ;
 int gtk_tree_store_clear (scalar_t__) ;
 int gtk_tree_view_expand_all (int ) ;
 int rootmenu ;
 scalar_t__ tree ;
 scalar_t__ tree1 ;
 int tree1_w ;
 scalar_t__ tree2 ;

__attribute__((used)) static void display_list(void)
{
 if (tree1)
  gtk_tree_store_clear(tree1);

 tree = tree1;
 display_tree(&rootmenu);
 gtk_tree_view_expand_all(GTK_TREE_VIEW(tree1_w));
 tree = tree2;
}
