
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_agblock_t ;



__attribute__((used)) static int
xchk_agblock_cmp(
 const void *pa,
 const void *pb)
{
 const xfs_agblock_t *a = pa;
 const xfs_agblock_t *b = pb;

 return (int)*a - (int)*b;
}
