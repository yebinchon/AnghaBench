
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SL_KEY_UNTAB ;
 int SLang_init_tty (int,int ,int ) ;
 int SLkp_define_keysym (char*,int ) ;
 int SLkp_init () ;
 int SLsmg_init_smg () ;
 int SLtt_get_screen_size () ;
 int SLtt_get_terminfo () ;
 int SLutf8_enable (int) ;
 int hist_browser__init_hpp () ;
 int perf_error__register (int *) ;
 int perf_tui_eops ;
 int pr_err (char*) ;
 int signal (int ,int ) ;
 int tui_progress__init () ;
 int ui__signal ;
 int ui__signal_backtrace ;
 int ui_browser__init () ;
 int ui_helpline__init () ;

int ui__init(void)
{
 int err;

 SLutf8_enable(-1);
 SLtt_get_terminfo();
 SLtt_get_screen_size();

 err = SLsmg_init_smg();
 if (err < 0)
  goto out;
 err = SLang_init_tty(-1, 0, 0);
 if (err < 0)
  goto out;

 err = SLkp_init();
 if (err < 0) {
  pr_err("TUI initialization failed.\n");
  goto out;
 }

 SLkp_define_keysym((char *)"^(kB)", SL_KEY_UNTAB);

 signal(SIGSEGV, ui__signal_backtrace);
 signal(SIGFPE, ui__signal_backtrace);
 signal(SIGINT, ui__signal);
 signal(SIGQUIT, ui__signal);
 signal(SIGTERM, ui__signal);

 perf_error__register(&perf_tui_eops);

 ui_helpline__init();
 ui_browser__init();
 tui_progress__init();

 hist_browser__init_hpp();
out:
 return err;
}
