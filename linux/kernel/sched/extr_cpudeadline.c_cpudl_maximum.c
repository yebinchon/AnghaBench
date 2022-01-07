
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpudl {TYPE_1__* elements; } ;
struct TYPE_2__ {int cpu; } ;



__attribute__((used)) static inline int cpudl_maximum(struct cpudl *cp)
{
 return cp->elements[0].cpu;
}
