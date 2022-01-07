
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2quo_state {int qs_work; int qs_lock; } ;


 int INIT_WORK (int *,int ) ;
 int o2quo_make_decision ;
 struct o2quo_state o2quo_state ;
 int spin_lock_init (int *) ;

void o2quo_init(void)
{
 struct o2quo_state *qs = &o2quo_state;

 spin_lock_init(&qs->qs_lock);
 INIT_WORK(&qs->qs_work, o2quo_make_decision);
}
