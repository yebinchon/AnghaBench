
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union smc_host_cursor {scalar_t__ wrap; scalar_t__ count; } ;


 int smc_curs_diff (unsigned int,union smc_host_cursor*,union smc_host_cursor*) ;

__attribute__((used)) static inline int smc_curs_comp(unsigned int size,
    union smc_host_cursor *old,
    union smc_host_cursor *new)
{
 if (old->wrap > new->wrap ||
     (old->wrap == new->wrap && old->count > new->count))
  return -smc_curs_diff(size, new, old);
 return smc_curs_diff(size, old, new);
}
