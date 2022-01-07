
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLang_reset_tty () ;
 int SLsmg_refresh () ;
 int SLsmg_reset_smg () ;
 int SLtt_set_cursor_visibility (int) ;
 int perf_error__unregister (int *) ;
 int perf_tui_eops ;
 scalar_t__ tui_helpline__set ;
 int ui__question_window (char*,int ,char*,int ) ;
 int ui_helpline__last_msg ;

void ui__exit(bool wait_for_ok)
{
 if (wait_for_ok && tui_helpline__set)
  ui__question_window("Fatal Error",
        ui_helpline__last_msg,
        "Press any key...", 0);

 SLtt_set_cursor_visibility(1);
 SLsmg_refresh();
 SLsmg_reset_smg();
 SLang_reset_tty();

 perf_error__unregister(&perf_tui_eops);
}
