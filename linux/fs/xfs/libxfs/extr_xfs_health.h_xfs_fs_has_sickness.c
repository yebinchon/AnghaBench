
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;


 int xfs_fs_measure_sickness (struct xfs_mount*,unsigned int*,unsigned int*) ;

__attribute__((used)) static inline bool
xfs_fs_has_sickness(struct xfs_mount *mp, unsigned int mask)
{
 unsigned int sick, checked;

 xfs_fs_measure_sickness(mp, &sick, &checked);
 return sick & mask;
}
