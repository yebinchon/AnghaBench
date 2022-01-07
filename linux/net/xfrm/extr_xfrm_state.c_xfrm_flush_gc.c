
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_work (int *) ;
 int xfrm_state_gc_work ;

void xfrm_flush_gc(void)
{
 flush_work(&xfrm_state_gc_work);
}
