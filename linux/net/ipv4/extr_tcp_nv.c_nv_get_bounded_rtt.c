
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcpnv {scalar_t__ nv_lower_bound_rtt; scalar_t__ nv_base_rtt; } ;



inline u32 nv_get_bounded_rtt(struct tcpnv *ca, u32 val)
{
 if (ca->nv_lower_bound_rtt > 0 && val < ca->nv_lower_bound_rtt)
  return ca->nv_lower_bound_rtt;
 else if (ca->nv_base_rtt > 0 && val > ca->nv_base_rtt)
  return ca->nv_base_rtt;
 else
  return val;
}
