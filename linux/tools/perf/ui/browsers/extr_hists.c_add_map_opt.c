
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct map* map; } ;
struct popup_action {int fn; TYPE_1__ ms; } ;
struct map {int dummy; } ;
struct hist_browser {int hists; } ;


 scalar_t__ asprintf (char**,char*) ;
 int do_browse_map ;
 int dso ;
 int hists__has (int ,int ) ;

__attribute__((used)) static int
add_map_opt(struct hist_browser *browser,
     struct popup_action *act, char **optstr, struct map *map)
{
 if (!hists__has(browser->hists, dso) || map == ((void*)0))
  return 0;

 if (asprintf(optstr, "Browse map details") < 0)
  return 0;

 act->ms.map = map;
 act->fn = do_browse_map;
 return 1;
}
