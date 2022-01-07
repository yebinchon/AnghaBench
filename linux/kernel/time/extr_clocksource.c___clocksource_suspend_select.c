
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int flags; scalar_t__ rating; int name; scalar_t__ resume; scalar_t__ suspend; } ;


 int CLOCK_SOURCE_SUSPEND_NONSTOP ;
 int pr_warn (char*,int ) ;
 struct clocksource* suspend_clocksource ;

__attribute__((used)) static void __clocksource_suspend_select(struct clocksource *cs)
{



 if (!(cs->flags & CLOCK_SOURCE_SUSPEND_NONSTOP))
  return;






 if (cs->suspend || cs->resume) {
  pr_warn("Nonstop clocksource %s should not supply suspend/resume interfaces\n",
   cs->name);
 }


 if (!suspend_clocksource || cs->rating > suspend_clocksource->rating)
  suspend_clocksource = cs;
}
