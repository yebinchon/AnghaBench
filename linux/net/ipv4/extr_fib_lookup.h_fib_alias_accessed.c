
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_alias {int fa_state; } ;


 int FA_S_ACCESSED ;

__attribute__((used)) static inline void fib_alias_accessed(struct fib_alias *fa)
{
 if (!(fa->fa_state & FA_S_ACCESSED))
  fa->fa_state |= FA_S_ACCESSED;
}
