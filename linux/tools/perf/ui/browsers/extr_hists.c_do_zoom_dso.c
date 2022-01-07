
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct map* map; } ;
struct popup_action {TYPE_1__ ms; } ;
struct map {TYPE_2__* dso; } ;
struct hist_browser {TYPE_4__* hists; int pstack; } ;
struct TYPE_8__ {TYPE_2__* dso_filter; } ;
struct TYPE_7__ {char* short_name; } ;


 int HISTC_DSO ;
 scalar_t__ __map__is_kernel (struct map*) ;
 int dso ;
 int hist_browser__reset (struct hist_browser*) ;
 int hists__filter_by_dso (TYPE_4__*) ;
 int hists__has (TYPE_4__*,int ) ;
 int perf_hpp__set_elide (int ,int) ;
 int pstack__push (int ,TYPE_2__**) ;
 int pstack__remove (int ,TYPE_2__**) ;
 int ui_helpline__fpush (char*,char*) ;
 int ui_helpline__pop () ;

__attribute__((used)) static int
do_zoom_dso(struct hist_browser *browser, struct popup_action *act)
{
 struct map *map = act->ms.map;

 if (!hists__has(browser->hists, dso) || map == ((void*)0))
  return 0;

 if (browser->hists->dso_filter) {
  pstack__remove(browser->pstack, &browser->hists->dso_filter);
  perf_hpp__set_elide(HISTC_DSO, 0);
  browser->hists->dso_filter = ((void*)0);
  ui_helpline__pop();
 } else {
  ui_helpline__fpush("To zoom out press ESC or ENTER + \"Zoom out of %s DSO\"",
       __map__is_kernel(map) ? "the Kernel" : map->dso->short_name);
  browser->hists->dso_filter = map->dso;
  perf_hpp__set_elide(HISTC_DSO, 1);
  pstack__push(browser->pstack, &browser->hists->dso_filter);
 }

 hists__filter_by_dso(browser->hists);
 hist_browser__reset(browser);
 return 0;
}
