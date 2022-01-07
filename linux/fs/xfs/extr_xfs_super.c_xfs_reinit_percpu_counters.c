
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_fdblocks; int sb_ifree; int sb_icount; } ;
struct xfs_mount {TYPE_1__ m_sb; int m_fdblocks; int m_ifree; int m_icount; } ;


 int percpu_counter_set (int *,int ) ;

void
xfs_reinit_percpu_counters(
 struct xfs_mount *mp)
{
 percpu_counter_set(&mp->m_icount, mp->m_sb.sb_icount);
 percpu_counter_set(&mp->m_ifree, mp->m_sb.sb_ifree);
 percpu_counter_set(&mp->m_fdblocks, mp->m_sb.sb_fdblocks);
}
