
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {TYPE_1__* i_mount; } ;
struct TYPE_2__ {int m_sb; scalar_t__ m_always_cow; } ;


 scalar_t__ xfs_sb_version_hasreflink (int *) ;

__attribute__((used)) static inline bool xfs_is_always_cow_inode(struct xfs_inode *ip)
{
 return ip->i_mount->m_always_cow &&
  xfs_sb_version_hasreflink(&ip->i_mount->m_sb);
}
