
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef char gchar ;
typedef int GtkWidget ;
typedef int GtkMenuItem ;


 int GTK_BUTTONS_CLOSE ;
 int GTK_DIALOG_DESTROY_WITH_PARENT ;
 int GTK_MESSAGE_INFO ;
 int GTK_OBJECT (int *) ;
 int GTK_WINDOW (int ) ;
 int G_CALLBACK (int ) ;
 int g_signal_connect_swapped (int ,char*,int ,int ) ;
 int * gtk_message_dialog_new (int ,int ,int ,int ,char*,char const*) ;
 int gtk_widget_destroy ;
 int gtk_widget_show_all (int *) ;
 int main_wnd ;

void on_introduction1_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 GtkWidget *dialog;
 const gchar *intro_text =
     "Welcome to gkc, the GTK+ graphical configuration tool\n"
     "For each option, a blank box indicates the feature is disabled, a\n"
     "check indicates it is enabled, and a dot indicates that it is to\n"
     "be compiled as a module.  Clicking on the box will cycle through the three states.\n"
     "\n"
     "If you do not see an option (e.g., a device driver) that you\n"
     "believe should be present, try turning on Show All Options\n"
     "under the Options menu.\n"
     "Although there is no cross reference yet to help you figure out\n"
     "what other options must be enabled to support the option you\n"
     "are interested in, you can still view the help of a grayed-out\n"
     "option.\n"
     "\n"
     "Toggling Show Debug Info under the Options menu will show \n"
     "the dependencies, which you can then match by examining other options.";

 dialog = gtk_message_dialog_new(GTK_WINDOW(main_wnd),
     GTK_DIALOG_DESTROY_WITH_PARENT,
     GTK_MESSAGE_INFO,
     GTK_BUTTONS_CLOSE, "%s", intro_text);
 g_signal_connect_swapped(GTK_OBJECT(dialog), "response",
     G_CALLBACK(gtk_widget_destroy),
     GTK_OBJECT(dialog));
 gtk_widget_show_all(dialog);
}
