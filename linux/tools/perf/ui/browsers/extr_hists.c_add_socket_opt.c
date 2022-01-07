
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct popup_action {int socket; int fn; } ;
struct hist_browser {TYPE_1__* hists; } ;
struct TYPE_2__ {int socket_filter; } ;


 scalar_t__ asprintf (char**,char*,char*,int) ;
 int do_zoom_socket ;
 int hists__has (TYPE_1__*,int ) ;
 int socket ;

__attribute__((used)) static int
add_socket_opt(struct hist_browser *browser, struct popup_action *act,
        char **optstr, int socket_id)
{
 if (!hists__has(browser->hists, socket) || socket_id < 0)
  return 0;

 if (asprintf(optstr, "Zoom %s Processor Socket %d",
       (browser->hists->socket_filter > -1) ? "out of" : "into",
       socket_id) < 0)
  return 0;

 act->socket = socket_id;
 act->fn = do_zoom_socket;
 return 1;
}
