
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct xarray {int xa_head; } ;
struct TYPE_7__ {int * xa_node; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int XA_FREE_MARK ;
 int XA_STATE (TYPE_1__,struct xarray*,int ) ;
 void* xa_head_locked (struct xarray*) ;
 scalar_t__ xa_is_node (void*) ;
 int xa_mark_clear (struct xarray*,int ) ;
 int xa_to_node (void*) ;
 scalar_t__ xa_zero_busy (struct xarray*) ;
 TYPE_1__ xas ;
 int xas_free_nodes (TYPE_1__*,int ) ;
 int xas_init_marks (TYPE_1__*) ;
 int xas_lock_irqsave (TYPE_1__*,unsigned long) ;
 int xas_unlock_irqrestore (TYPE_1__*,unsigned long) ;

void xa_destroy(struct xarray *xa)
{
 XA_STATE(xas, xa, 0);
 unsigned long flags;
 void *entry;

 xas.xa_node = ((void*)0);
 xas_lock_irqsave(&xas, flags);
 entry = xa_head_locked(xa);
 RCU_INIT_POINTER(xa->xa_head, ((void*)0));
 xas_init_marks(&xas);
 if (xa_zero_busy(xa))
  xa_mark_clear(xa, XA_FREE_MARK);

 if (xa_is_node(entry))
  xas_free_nodes(&xas, xa_to_node(entry));
 xas_unlock_irqrestore(&xas, flags);
}
