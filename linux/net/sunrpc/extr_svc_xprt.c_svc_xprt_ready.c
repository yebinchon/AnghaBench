
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_xprt {TYPE_1__* xpt_ops; int xpt_flags; } ;
struct TYPE_2__ {scalar_t__ (* xpo_has_wspace ) (struct svc_xprt*) ;} ;


 unsigned long BIT (int ) ;
 unsigned long READ_ONCE (int ) ;
 int XPT_CLOSE ;
 int XPT_CONN ;
 int XPT_DATA ;
 int XPT_DEFERRED ;
 int smp_rmb () ;
 scalar_t__ stub1 (struct svc_xprt*) ;
 scalar_t__ svc_xprt_slots_in_range (struct svc_xprt*) ;
 int trace_svc_xprt_no_write_space (struct svc_xprt*) ;

__attribute__((used)) static bool svc_xprt_ready(struct svc_xprt *xprt)
{
 unsigned long xpt_flags;
 smp_rmb();
 xpt_flags = READ_ONCE(xprt->xpt_flags);

 if (xpt_flags & (BIT(XPT_CONN) | BIT(XPT_CLOSE)))
  return 1;
 if (xpt_flags & (BIT(XPT_DATA) | BIT(XPT_DEFERRED))) {
  if (xprt->xpt_ops->xpo_has_wspace(xprt) &&
      svc_xprt_slots_in_range(xprt))
   return 1;
  trace_svc_xprt_no_write_space(xprt);
  return 0;
 }
 return 0;
}
