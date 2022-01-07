
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AA_X_UNSAFE ;

__attribute__((used)) static inline bool xindex_is_subset(u32 link, u32 target)
{
 if (((link & ~AA_X_UNSAFE) != (target & ~AA_X_UNSAFE)) ||
     ((link & AA_X_UNSAFE) && !(target & AA_X_UNSAFE)))
  return 0;

 return 1;
}
