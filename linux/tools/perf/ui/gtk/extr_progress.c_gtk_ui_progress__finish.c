
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dialog ;
 int gtk_widget_destroy (int *) ;

__attribute__((used)) static void gtk_ui_progress__finish(void)
{

 gtk_widget_destroy(dialog);

 dialog = ((void*)0);
}
