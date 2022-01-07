
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
struct xfs_perag {scalar_t__ pagf_flcount; scalar_t__ pagf_freeblks; scalar_t__ pagf_longest; } ;



xfs_extlen_t
xfs_alloc_longest_free_extent(
 struct xfs_perag *pag,
 xfs_extlen_t need,
 xfs_extlen_t reserved)
{
 xfs_extlen_t delta = 0;





 if (need > pag->pagf_flcount)
  delta = need - pag->pagf_flcount;






 if (pag->pagf_freeblks - pag->pagf_longest < reserved)
  delta += reserved - (pag->pagf_freeblks - pag->pagf_longest);





 if (pag->pagf_longest > delta)
  return pag->pagf_longest - delta;


 return pag->pagf_flcount > 0 || pag->pagf_longest > 0;
}
