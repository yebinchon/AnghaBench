
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;
typedef int gfp_t ;


 int ida_alloc_range (struct ida*,unsigned int,int ,int ) ;

__attribute__((used)) static inline int ida_alloc_min(struct ida *ida, unsigned int min, gfp_t gfp)
{
 return ida_alloc_range(ida, min, ~0, gfp);
}
