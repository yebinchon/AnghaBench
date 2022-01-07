
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int runlist_element ;


 scalar_t__ likely (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void ntfs_rl_mc(runlist_element *dstbase, int dst,
  runlist_element *srcbase, int src, int size)
{
 if (likely(size > 0))
  memcpy(dstbase + dst, srcbase + src, size * sizeof(*dstbase));
}
