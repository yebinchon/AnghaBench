
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct load_weight {int inv_weight; int weight; } ;


 int BITS_PER_LONG ;
 unsigned long WMULT_CONST ;
 scalar_t__ likely (int) ;
 unsigned long scale_load_down (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __update_inv_weight(struct load_weight *lw)
{
 unsigned long w;

 if (likely(lw->inv_weight))
  return;

 w = scale_load_down(lw->weight);

 if (BITS_PER_LONG > 32 && unlikely(w >= WMULT_CONST))
  lw->inv_weight = 1;
 else if (unlikely(!w))
  lw->inv_weight = WMULT_CONST;
 else
  lw->inv_weight = WMULT_CONST / w;
}
