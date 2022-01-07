
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_progress {int next; int step; int total; } ;


 int SLtt_Screen_Cols ;

__attribute__((used)) static void __tui_progress__init(struct ui_progress *p)
{
 p->next = p->step = p->total / (SLtt_Screen_Cols - 2) ?: 1;
}
