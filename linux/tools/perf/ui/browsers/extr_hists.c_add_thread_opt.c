
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {scalar_t__ comm_set; int tid; } ;
struct popup_action {int fn; struct thread* thread; } ;
struct hist_browser {TYPE_1__* hists; } ;
struct TYPE_2__ {scalar_t__ thread_filter; } ;


 int asprintf (char**,char*,char*,char*,...) ;
 struct thread* comm ;
 int do_zoom_thread ;
 scalar_t__ hists__has (TYPE_1__*,struct thread*) ;
 char* thread__comm_str (struct thread*) ;

__attribute__((used)) static int
add_thread_opt(struct hist_browser *browser, struct popup_action *act,
        char **optstr, struct thread *thread)
{
 int ret;

 if ((!hists__has(browser->hists, thread) &&
      !hists__has(browser->hists, comm)) || thread == ((void*)0))
  return 0;

 if (hists__has(browser->hists, thread)) {
  ret = asprintf(optstr, "Zoom %s %s(%d) thread",
          browser->hists->thread_filter ? "out of" : "into",
          thread->comm_set ? thread__comm_str(thread) : "",
          thread->tid);
 } else {
  ret = asprintf(optstr, "Zoom %s %s thread",
          browser->hists->thread_filter ? "out of" : "into",
          thread->comm_set ? thread__comm_str(thread) : "");
 }
 if (ret < 0)
  return 0;

 act->thread = thread;
 act->fn = do_zoom_thread;
 return 1;
}
