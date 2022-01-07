
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int protocol; int flags; int state; scalar_t__ control; } ;




 int IP_VS_CONN_F_NOOUTPUT ;
 int IP_VS_SCTP_S_CLOSED ;
 int IP_VS_TCP_S_CLOSE ;
 int IP_VS_TCP_S_FIN_WAIT ;
 int IP_VS_TCP_S_TIME_WAIT ;

__attribute__((used)) static inline bool is_new_conn_expected(const struct ip_vs_conn *cp,
     int conn_reuse_mode)
{

 if (cp->control)
  return 0;

 switch (cp->protocol) {
 case 128:
  return (cp->state == IP_VS_TCP_S_TIME_WAIT) ||
         (cp->state == IP_VS_TCP_S_CLOSE) ||
   ((conn_reuse_mode & 2) &&
    (cp->state == IP_VS_TCP_S_FIN_WAIT) &&
    (cp->flags & IP_VS_CONN_F_NOOUTPUT));
 case 129:
  return cp->state == IP_VS_SCTP_S_CLOSED;
 default:
  return 0;
 }
}
