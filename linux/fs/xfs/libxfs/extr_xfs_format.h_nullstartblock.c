
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;


 int ASSERT (int) ;
 int STARTBLOCKMASK ;
 int STARTBLOCKVALBITS ;

__attribute__((used)) static inline xfs_fsblock_t nullstartblock(int k)
{
 ASSERT(k < (1 << STARTBLOCKVALBITS));
 return STARTBLOCKMASK | (k);
}
