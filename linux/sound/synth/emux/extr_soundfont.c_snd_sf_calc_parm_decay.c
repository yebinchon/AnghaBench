
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calc_parm_search (int,int ) ;
 int decay_time_tbl ;

int
snd_sf_calc_parm_decay(int msec)
{
 return calc_parm_search(msec, decay_time_tbl);
}
