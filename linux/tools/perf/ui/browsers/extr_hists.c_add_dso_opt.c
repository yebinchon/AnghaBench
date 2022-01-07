
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct map* map; } ;
struct popup_action {int fn; TYPE_1__ ms; } ;
struct map {TYPE_2__* dso; } ;
struct hist_browser {TYPE_3__* hists; } ;
struct TYPE_6__ {scalar_t__ dso_filter; } ;
struct TYPE_5__ {char* short_name; } ;


 scalar_t__ __map__is_kernel (struct map*) ;
 scalar_t__ asprintf (char**,char*,char*,char*) ;
 int do_zoom_dso ;
 int dso ;
 int hists__has (TYPE_3__*,int ) ;

__attribute__((used)) static int
add_dso_opt(struct hist_browser *browser, struct popup_action *act,
     char **optstr, struct map *map)
{
 if (!hists__has(browser->hists, dso) || map == ((void*)0))
  return 0;

 if (asprintf(optstr, "Zoom %s %s DSO",
       browser->hists->dso_filter ? "out of" : "into",
       __map__is_kernel(map) ? "the Kernel" : map->dso->short_name) < 0)
  return 0;

 act->ms.map = map;
 act->fn = do_zoom_dso;
 return 1;
}
