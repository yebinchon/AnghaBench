
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;


 int xfs_rt_has_sickness (struct xfs_mount*,unsigned int) ;

__attribute__((used)) static inline bool
xfs_rt_is_healthy(struct xfs_mount *mp)
{
 return !xfs_rt_has_sickness(mp, -1U);
}
