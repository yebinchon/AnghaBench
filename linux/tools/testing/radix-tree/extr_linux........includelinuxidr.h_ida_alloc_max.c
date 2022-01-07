
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;
typedef int gfp_t ;


 int ida_alloc_range (struct ida*,int ,unsigned int,int ) ;

__attribute__((used)) static inline int ida_alloc_max(struct ida *ida, unsigned int max, gfp_t gfp)
{
 return ida_alloc_range(ida, 0, max, gfp);
}
