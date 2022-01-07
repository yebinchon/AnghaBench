
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sidtab {int count; } ;
struct context {int dummy; } ;


 struct context* sidtab_do_lookup (struct sidtab*,scalar_t__,int ) ;
 scalar_t__ smp_load_acquire (int *) ;

__attribute__((used)) static struct context *sidtab_lookup(struct sidtab *s, u32 index)
{

 u32 count = smp_load_acquire(&s->count);

 if (index >= count)
  return ((void*)0);

 return sidtab_do_lookup(s, index, 0);
}
