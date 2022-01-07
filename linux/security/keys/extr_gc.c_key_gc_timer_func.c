
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int TIME64_MAX ;
 int kenter (char*) ;
 int key_gc_next_run ;
 int key_schedule_gc_links () ;

__attribute__((used)) static void key_gc_timer_func(struct timer_list *unused)
{
 kenter("");
 key_gc_next_run = TIME64_MAX;
 key_schedule_gc_links();
}
