
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_delayed_work (int *) ;
 int reaper_work ;

void fsnotify_wait_marks_destroyed(void)
{
 flush_delayed_work(&reaper_work);
}
