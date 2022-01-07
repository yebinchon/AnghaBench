
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;
struct batadv_tp_vars {int srtt; int rttvar; int rto; } ;



__attribute__((used)) static void batadv_tp_update_rto(struct batadv_tp_vars *tp_vars,
     u32 new_rtt)
{
 long m = new_rtt;







 if (tp_vars->srtt != 0) {
  m -= (tp_vars->srtt >> 3);
  tp_vars->srtt += m;
  if (m < 0)
   m = -m;

  m -= (tp_vars->rttvar >> 2);
  tp_vars->rttvar += m;
 } else {

  tp_vars->srtt = m << 3;
  tp_vars->rttvar = m << 1;
 }




 tp_vars->rto = (tp_vars->srtt >> 3) + tp_vars->rttvar;
}
