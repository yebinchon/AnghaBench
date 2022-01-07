
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_ifile_info {int dummy; } ;
struct inode {int dummy; } ;


 scalar_t__ NILFS_MDT (struct inode*) ;

__attribute__((used)) static inline struct nilfs_ifile_info *NILFS_IFILE_I(struct inode *ifile)
{
 return (struct nilfs_ifile_info *)NILFS_MDT(ifile);
}
