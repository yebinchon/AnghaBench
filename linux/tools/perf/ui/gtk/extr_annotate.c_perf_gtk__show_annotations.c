
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * main_window; } ;
typedef int GtkWidget ;


 int GTK_WINDOW (int *) ;
 int GTK_WIN_POS_CENTER ;
 int gtk_main () ;
 int gtk_widget_show_all (int *) ;
 int gtk_window_set_position (int ,int ) ;
 int perf_gtk__deactivate_context (TYPE_1__**) ;
 int perf_gtk__is_active_context (TYPE_1__*) ;
 int perf_gtk__resize_window (int *) ;
 TYPE_1__* pgctx ;

void perf_gtk__show_annotations(void)
{
 GtkWidget *window;

 if (!perf_gtk__is_active_context(pgctx))
  return;

 window = pgctx->main_window;
 gtk_widget_show_all(window);

 perf_gtk__resize_window(window);
 gtk_window_set_position(GTK_WINDOW(window), GTK_WIN_POS_CENTER);

 gtk_main();

 perf_gtk__deactivate_context(&pgctx);
}
