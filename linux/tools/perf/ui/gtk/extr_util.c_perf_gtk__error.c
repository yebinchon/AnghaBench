
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int main_window; } ;
typedef int GtkWidget ;


 int GTK_BUTTONS_CLOSE ;
 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_DESTROY_WITH_PARENT ;
 int GTK_MESSAGE_ERROR ;
 int GTK_WINDOW (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new_with_markup (int ,int ,int ,int ,char*,char*) ;
 int gtk_widget_destroy (int *) ;
 int perf_gtk__is_active_context (TYPE_1__*) ;
 TYPE_1__* pgctx ;
 int stderr ;
 scalar_t__ vasprintf (char**,char const*,int ) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static int perf_gtk__error(const char *format, va_list args)
{
 char *msg;
 GtkWidget *dialog;

 if (!perf_gtk__is_active_context(pgctx) ||
     vasprintf(&msg, format, args) < 0) {
  fprintf(stderr, "Error:\n");
  vfprintf(stderr, format, args);
  fprintf(stderr, "\n");
  return -1;
 }

 dialog = gtk_message_dialog_new_with_markup(GTK_WINDOW(pgctx->main_window),
     GTK_DIALOG_DESTROY_WITH_PARENT,
     GTK_MESSAGE_ERROR,
     GTK_BUTTONS_CLOSE,
     "<b>Error</b>\n\n%s", msg);
 gtk_dialog_run(GTK_DIALOG(dialog));

 gtk_widget_destroy(dialog);
 free(msg);
 return 0;
}
