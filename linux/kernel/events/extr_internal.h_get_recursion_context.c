
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 scalar_t__ in_irq () ;
 int in_nmi () ;
 scalar_t__ in_softirq () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int get_recursion_context(int *recursion)
{
 int rctx;

 if (unlikely(in_nmi()))
  rctx = 3;
 else if (in_irq())
  rctx = 2;
 else if (in_softirq())
  rctx = 1;
 else
  rctx = 0;

 if (recursion[rctx])
  return -1;

 recursion[rctx]++;
 barrier();

 return rctx;
}
