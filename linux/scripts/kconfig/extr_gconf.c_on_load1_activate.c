
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_2__ {int cancel_button; int ok_button; } ;
typedef int GtkWidget ;
typedef int GtkMenuItem ;


 TYPE_1__* GTK_FILE_SELECTION (int *) ;
 int GTK_OBJECT (int ) ;
 int G_CALLBACK (int ) ;
 int g_signal_connect (int ,char*,int ,int ) ;
 int g_signal_connect_swapped (int ,char*,int ,int ) ;
 int * gtk_file_selection_new (char*) ;
 int gtk_widget_destroy ;
 int gtk_widget_show (int *) ;
 int load_filename ;

void on_load1_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 GtkWidget *fs;

 fs = gtk_file_selection_new("Load file...");
 g_signal_connect(GTK_OBJECT(GTK_FILE_SELECTION(fs)->ok_button),
    "clicked",
    G_CALLBACK(load_filename), (gpointer) fs);
 g_signal_connect_swapped(GTK_OBJECT
     (GTK_FILE_SELECTION(fs)->ok_button),
     "clicked", G_CALLBACK(gtk_widget_destroy),
     (gpointer) fs);
 g_signal_connect_swapped(GTK_OBJECT
     (GTK_FILE_SELECTION(fs)->cancel_button),
     "clicked", G_CALLBACK(gtk_widget_destroy),
     (gpointer) fs);
 gtk_widget_show(fs);
}
