
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int attack_time_tbl ;
 int calc_parm_search (int,int ) ;

int
snd_sf_calc_parm_attack(int msec)
{
 return calc_parm_search(msec, attack_time_tbl);
}
