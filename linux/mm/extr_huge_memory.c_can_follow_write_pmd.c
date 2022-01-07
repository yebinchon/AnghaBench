
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 unsigned int FOLL_COW ;
 unsigned int FOLL_FORCE ;
 scalar_t__ pmd_dirty (int ) ;
 scalar_t__ pmd_write (int ) ;

__attribute__((used)) static inline bool can_follow_write_pmd(pmd_t pmd, unsigned int flags)
{
 return pmd_write(pmd) ||
        ((flags & FOLL_FORCE) && (flags & FOLL_COW) && pmd_dirty(pmd));
}
