
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {scalar_t__ navkeypressed; int use_navkeypressed; } ;
struct annotation {int max_jump_sources; } ;


 int HE_COLORSET_MEDIUM ;
 int HE_COLORSET_NORMAL ;
 int HE_COLORSET_SELECTED ;
 int HE_COLORSET_TOP ;
 struct annotation* browser__annotation (struct ui_browser*) ;

__attribute__((used)) static int ui_browser__jumps_percent_color(struct ui_browser *browser, int nr, bool current)
{
 struct annotation *notes = browser__annotation(browser);

 if (current && (!browser->use_navkeypressed || browser->navkeypressed))
  return HE_COLORSET_SELECTED;
 if (nr == notes->max_jump_sources)
  return HE_COLORSET_TOP;
 if (nr > 1)
  return HE_COLORSET_MEDIUM;
 return HE_COLORSET_NORMAL;
}
