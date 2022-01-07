
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct report {int annotation_opts; int min_percent; struct perf_session* session; } ;
struct TYPE_2__ {int env; } ;
struct perf_session {TYPE_1__ header; struct evlist* evlist; } ;
struct evlist {int dummy; } ;


 int DOCDIR ;
 int K_SWITCH_INPUT_DATA ;
 int TIPDIR ;
 int perf_evlist__tty_browse_hists (struct evlist*,struct report*,char const*) ;
 int perf_evlist__tui_browse_hists (struct evlist*,char const*,int *,int ,int *,int,int *) ;
 char* perf_tip (int ) ;
 int report__gtk_browse_hists (struct report*,char const*) ;
 int system_path (int ) ;
 int use_browser ;

__attribute__((used)) static int report__browse_hists(struct report *rep)
{
 int ret;
 struct perf_session *session = rep->session;
 struct evlist *evlist = session->evlist;
 const char *help = perf_tip(system_path(TIPDIR));

 if (help == ((void*)0)) {

  help = perf_tip(DOCDIR);
  if (help == ((void*)0))
   help = "Cannot load tips.txt file, please install perf!";
 }

 switch (use_browser) {
 case 1:
  ret = perf_evlist__tui_browse_hists(evlist, help, ((void*)0),
          rep->min_percent,
          &session->header.env,
          1, &rep->annotation_opts);




  if (ret != K_SWITCH_INPUT_DATA)
   ret = 0;
  break;
 case 2:
  ret = report__gtk_browse_hists(rep, help);
  break;
 default:
  ret = perf_evlist__tty_browse_hists(evlist, rep, help);
  break;
 }

 return ret;
}
