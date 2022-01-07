
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef scalar_t__ x ;


 scalar_t__ STARTBLOCKMASK ;

__attribute__((used)) static inline int isnullstartblock(xfs_fsblock_t x)
{
 return ((x) & STARTBLOCKMASK) == STARTBLOCKMASK;
}
