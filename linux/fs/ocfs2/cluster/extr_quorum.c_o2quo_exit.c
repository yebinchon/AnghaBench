
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2quo_state {int qs_work; } ;


 int flush_work (int *) ;
 struct o2quo_state o2quo_state ;

void o2quo_exit(void)
{
 struct o2quo_state *qs = &o2quo_state;

 flush_work(&qs->qs_work);
}
