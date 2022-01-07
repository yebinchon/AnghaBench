
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int dummy; } ;


 unsigned int XA_LOCK_BH ;
 unsigned int XA_LOCK_IRQ ;
 int xas_lock (struct xa_state*) ;
 int xas_lock_bh (struct xa_state*) ;
 int xas_lock_irq (struct xa_state*) ;

__attribute__((used)) static inline void xas_lock_type(struct xa_state *xas, unsigned int lock_type)
{
 if (lock_type == XA_LOCK_IRQ)
  xas_lock_irq(xas);
 else if (lock_type == XA_LOCK_BH)
  xas_lock_bh(xas);
 else
  xas_lock(xas);
}
