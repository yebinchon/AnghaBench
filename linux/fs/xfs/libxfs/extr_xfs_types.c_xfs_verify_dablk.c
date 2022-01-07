
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_dablk_t ;
struct xfs_mount {int dummy; } ;



bool
xfs_verify_dablk(
 struct xfs_mount *mp,
 xfs_fileoff_t dabno)
{
 xfs_dablk_t max_dablk = -1U;

 return dabno <= max_dablk;
}
