
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nilfs_sc_info {int sc_timer_task; } ;


 struct nilfs_sc_info* from_timer (int ,struct timer_list*,int ) ;
 int sc_timer ;
 struct nilfs_sc_info* sci ;
 int wake_up_process (int ) ;

__attribute__((used)) static void nilfs_construction_timeout(struct timer_list *t)
{
 struct nilfs_sc_info *sci = from_timer(sci, t, sc_timer);

 wake_up_process(sci->sc_timer_task);
}
