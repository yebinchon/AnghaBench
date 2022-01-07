
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {scalar_t__ comm_set; int tid; } ;
struct popup_action {struct thread* thread; } ;
struct hist_browser {TYPE_1__* hists; int pstack; } ;
struct TYPE_3__ {scalar_t__ thread_filter; } ;


 int HISTC_THREAD ;
 struct thread* comm ;
 int hist_browser__reset (struct hist_browser*) ;
 int hists__filter_by_thread (TYPE_1__*) ;
 scalar_t__ hists__has (TYPE_1__*,struct thread*) ;
 int perf_hpp__set_elide (int ,int) ;
 int pstack__push (int ,scalar_t__*) ;
 int pstack__remove (int ,scalar_t__*) ;
 char* thread__comm_str (struct thread*) ;
 scalar_t__ thread__get (struct thread*) ;
 int thread__zput (scalar_t__) ;
 int ui_helpline__fpush (char*,char*,...) ;
 int ui_helpline__pop () ;

__attribute__((used)) static int
do_zoom_thread(struct hist_browser *browser, struct popup_action *act)
{
 struct thread *thread = act->thread;

 if ((!hists__has(browser->hists, thread) &&
      !hists__has(browser->hists, comm)) || thread == ((void*)0))
  return 0;

 if (browser->hists->thread_filter) {
  pstack__remove(browser->pstack, &browser->hists->thread_filter);
  perf_hpp__set_elide(HISTC_THREAD, 0);
  thread__zput(browser->hists->thread_filter);
  ui_helpline__pop();
 } else {
  if (hists__has(browser->hists, thread)) {
   ui_helpline__fpush("To zoom out press ESC or ENTER + \"Zoom out of %s(%d) thread\"",
        thread->comm_set ? thread__comm_str(thread) : "",
        thread->tid);
  } else {
   ui_helpline__fpush("To zoom out press ESC or ENTER + \"Zoom out of %s thread\"",
        thread->comm_set ? thread__comm_str(thread) : "");
  }

  browser->hists->thread_filter = thread__get(thread);
  perf_hpp__set_elide(HISTC_THREAD, 0);
  pstack__push(browser->pstack, &browser->hists->thread_filter);
 }

 hists__filter_by_thread(browser->hists);
 hist_browser__reset(browser);
 return 0;
}
