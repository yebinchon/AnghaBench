
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {int i_ino; TYPE_1__* i_mount; } ;
struct TYPE_2__ {int m_filestream; } ;


 int xfs_mru_cache_delete (int ,int ) ;

void
xfs_filestream_deassociate(
 struct xfs_inode *ip)
{
 xfs_mru_cache_delete(ip->i_mount->m_filestream, ip->i_ino);
}
