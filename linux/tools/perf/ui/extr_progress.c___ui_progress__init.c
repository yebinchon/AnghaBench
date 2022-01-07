
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ui_progress {int next; int step; int total; char const* title; int size; scalar_t__ curr; } ;
struct TYPE_2__ {int (* init ) (struct ui_progress*) ;} ;


 int stub1 (struct ui_progress*) ;
 TYPE_1__* ui_progress__ops ;

void __ui_progress__init(struct ui_progress *p, u64 total,
    const char *title, bool size)
{
 p->curr = 0;
 p->next = p->step = total / 16 ?: 1;
 p->total = total;
 p->title = title;
 p->size = size;

 if (ui_progress__ops->init)
  ui_progress__ops->init(p);
}
