
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int flags; struct ip_vs_conn* control; } ;


 int IP_VS_CONN_F_TEMPLATE ;

__attribute__((used)) static inline bool in_persistence(struct ip_vs_conn *cp)
{
 for (cp = cp->control; cp; cp = cp->control) {
  if (cp->flags & IP_VS_CONN_F_TEMPLATE)
   return 1;
 }
 return 0;
}
