
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsize_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;


 int xfs_itruncate_extents_flags (struct xfs_trans**,struct xfs_inode*,int,int ,int ) ;

__attribute__((used)) static inline int
xfs_itruncate_extents(
 struct xfs_trans **tpp,
 struct xfs_inode *ip,
 int whichfork,
 xfs_fsize_t new_size)
{
 return xfs_itruncate_extents_flags(tpp, ip, whichfork, new_size, 0);
}
