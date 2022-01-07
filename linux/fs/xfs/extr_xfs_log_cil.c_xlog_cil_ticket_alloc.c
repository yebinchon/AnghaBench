
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlog_ticket {scalar_t__ t_curr_res; } ;
struct xlog {int dummy; } ;


 int KM_NOFS ;
 int XFS_TRANSACTION ;
 struct xlog_ticket* xlog_ticket_alloc (struct xlog*,int ,int,int ,int ,int ) ;

__attribute__((used)) static struct xlog_ticket *
xlog_cil_ticket_alloc(
 struct xlog *log)
{
 struct xlog_ticket *tic;

 tic = xlog_ticket_alloc(log, 0, 1, XFS_TRANSACTION, 0,
    KM_NOFS);





 tic->t_curr_res = 0;
 return tic;
}
