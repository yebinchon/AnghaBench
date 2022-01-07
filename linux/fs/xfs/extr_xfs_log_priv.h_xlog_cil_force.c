
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlog {TYPE_1__* l_cilp; } ;
struct TYPE_2__ {int xc_current_sequence; } ;


 int xlog_cil_force_lsn (struct xlog*,int ) ;

__attribute__((used)) static inline void
xlog_cil_force(struct xlog *log)
{
 xlog_cil_force_lsn(log, log->l_cilp->xc_current_sequence);
}
