
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ui_progress {int curr; scalar_t__ next; int step; } ;
struct TYPE_2__ {int (* update ) (struct ui_progress*) ;} ;


 int DIV_ROUND_UP (int,int) ;
 int stub1 (struct ui_progress*) ;
 TYPE_1__* ui_progress__ops ;

void ui_progress__update(struct ui_progress *p, u64 adv)
{
 u64 last = p->curr;

 p->curr += adv;

 if (p->curr >= p->next) {
  u64 nr = DIV_ROUND_UP(p->curr - last, p->step);

  p->next += nr * p->step;
  ui_progress__ops->update(p);
 }
}
