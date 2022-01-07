
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_progress__ops ;
 int * ui_progress__ops ;

void tui_progress__init(void)
{
 ui_progress__ops = &tui_progress__ops;
}
