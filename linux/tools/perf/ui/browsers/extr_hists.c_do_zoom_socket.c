
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct popup_action {int socket; } ;
struct hist_browser {TYPE_1__* hists; int pstack; } ;
struct TYPE_3__ {int socket_filter; } ;


 int HISTC_SOCKET ;
 int hist_browser__reset (struct hist_browser*) ;
 int hists__filter_by_socket (TYPE_1__*) ;
 int hists__has (TYPE_1__*,int ) ;
 int perf_hpp__set_elide (int ,int) ;
 int pstack__push (int ,int*) ;
 int pstack__remove (int ,int*) ;
 int socket ;

__attribute__((used)) static int
do_zoom_socket(struct hist_browser *browser, struct popup_action *act)
{
 if (!hists__has(browser->hists, socket) || act->socket < 0)
  return 0;

 if (browser->hists->socket_filter > -1) {
  pstack__remove(browser->pstack, &browser->hists->socket_filter);
  browser->hists->socket_filter = -1;
  perf_hpp__set_elide(HISTC_SOCKET, 0);
 } else {
  browser->hists->socket_filter = act->socket;
  perf_hpp__set_elide(HISTC_SOCKET, 1);
  pstack__push(browser->pstack, &browser->hists->socket_filter);
 }

 hists__filter_by_socket(browser->hists);
 hist_browser__reset(browser);
 return 0;
}
