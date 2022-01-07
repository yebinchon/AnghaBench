
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkMenuItem ;


 int GTK_WIDGET (int ) ;
 int gtk_widget_destroy (int ) ;
 int main_wnd ;
 int on_window1_delete_event (int *,int *,int *) ;

void on_quit1_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 if (!on_window1_delete_event(((void*)0), ((void*)0), ((void*)0)))
  gtk_widget_destroy(GTK_WIDGET(main_wnd));
}
