
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int GtkTreeIter ;


 int COL_NUMBER ;
 int GDK_TYPE_COLOR ;
 int GDK_TYPE_PIXBUF ;
 void* GTK_TREE_MODEL (int ) ;
 int G_TYPE_BOOLEAN ;
 int G_TYPE_POINTER ;
 int G_TYPE_STRING ;
 scalar_t__ g_malloc (int) ;
 int gtk_tree_store_new (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 void* model1 ;
 void* model2 ;
 int ** parents ;
 int tree ;
 int tree1 ;
 int tree2 ;

__attribute__((used)) static void init_tree_model(void)
{
 gint i;

 tree = tree2 = gtk_tree_store_new(COL_NUMBER,
       G_TYPE_STRING, G_TYPE_STRING,
       G_TYPE_STRING, G_TYPE_STRING,
       G_TYPE_STRING, G_TYPE_STRING,
       G_TYPE_POINTER, GDK_TYPE_COLOR,
       G_TYPE_BOOLEAN, GDK_TYPE_PIXBUF,
       G_TYPE_BOOLEAN, G_TYPE_BOOLEAN,
       G_TYPE_BOOLEAN, G_TYPE_BOOLEAN,
       G_TYPE_BOOLEAN);
 model2 = GTK_TREE_MODEL(tree2);

 for (parents[0] = ((void*)0), i = 1; i < 256; i++)
  parents[i] = (GtkTreeIter *) g_malloc(sizeof(GtkTreeIter));

 tree1 = gtk_tree_store_new(COL_NUMBER,
       G_TYPE_STRING, G_TYPE_STRING,
       G_TYPE_STRING, G_TYPE_STRING,
       G_TYPE_STRING, G_TYPE_STRING,
       G_TYPE_POINTER, GDK_TYPE_COLOR,
       G_TYPE_BOOLEAN, GDK_TYPE_PIXBUF,
       G_TYPE_BOOLEAN, G_TYPE_BOOLEAN,
       G_TYPE_BOOLEAN, G_TYPE_BOOLEAN,
       G_TYPE_BOOLEAN);
 model1 = GTK_TREE_MODEL(tree1);
}
