
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_mdt_info {int dummy; } ;
struct inode {struct nilfs_mdt_info* i_private; } ;



__attribute__((used)) static inline struct nilfs_mdt_info *NILFS_MDT(const struct inode *inode)
{
 return inode->i_private;
}
