
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TK_ADV_TICK ;
 int timekeeping_advance (int ) ;

void update_wall_time(void)
{
 timekeeping_advance(TK_ADV_TICK);
}
