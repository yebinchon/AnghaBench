
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlog_ticket {int t_flags; int t_unit_res; int t_cnt; } ;
struct xlog_grant_head {int dummy; } ;
struct xlog {struct xlog_grant_head l_write_head; } ;


 int ASSERT (int) ;
 int XLOG_TIC_PERM_RESERV ;

__attribute__((used)) static inline int
xlog_ticket_reservation(
 struct xlog *log,
 struct xlog_grant_head *head,
 struct xlog_ticket *tic)
{
 if (head == &log->l_write_head) {
  ASSERT(tic->t_flags & XLOG_TIC_PERM_RESERV);
  return tic->t_unit_res;
 } else {
  if (tic->t_flags & XLOG_TIC_PERM_RESERV)
   return tic->t_unit_res * tic->t_cnt;
  else
   return tic->t_unit_res;
 }
}
