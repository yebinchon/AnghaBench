
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_rtblock_t ;
struct TYPE_2__ {scalar_t__ sb_rblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;



bool
xfs_verify_rtbno(
 struct xfs_mount *mp,
 xfs_rtblock_t rtbno)
{
 return rtbno < mp->m_sb.sb_rblocks;
}
