
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct xfs_mount {int m_super; } ;
struct inode {int i_rdev; int i_mode; int i_generation; int i_nlink; } ;
typedef int dev_t ;


 int inode_init_always (int ,struct inode*) ;
 int inode_peek_iversion (struct inode*) ;
 int inode_set_iversion_queried (struct inode*,int ) ;
 int set_nlink (struct inode*,int ) ;

__attribute__((used)) static int
xfs_reinit_inode(
 struct xfs_mount *mp,
 struct inode *inode)
{
 int error;
 uint32_t nlink = inode->i_nlink;
 uint32_t generation = inode->i_generation;
 uint64_t version = inode_peek_iversion(inode);
 umode_t mode = inode->i_mode;
 dev_t dev = inode->i_rdev;

 error = inode_init_always(mp->m_super, inode);

 set_nlink(inode, nlink);
 inode->i_generation = generation;
 inode_set_iversion_queried(inode, version);
 inode->i_mode = mode;
 inode->i_rdev = dev;
 return error;
}
