
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_rfsblock_t ;
typedef int xfs_daddr_t ;
typedef int xfs_agblock_t ;
struct TYPE_2__ {int sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int XFS_BB_TO_FSBT (struct xfs_mount*,int ) ;
 int do_div (int ,int ) ;

__attribute__((used)) static inline xfs_agblock_t
xfs_daddr_to_agbno(struct xfs_mount *mp, xfs_daddr_t d)
{
 xfs_rfsblock_t ld = XFS_BB_TO_FSBT(mp, d);
 return (xfs_agblock_t) do_div(ld, mp->m_sb.sb_agblocks);
}
