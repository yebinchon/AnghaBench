
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sufile_info {int dummy; } ;
struct inode {int dummy; } ;


 scalar_t__ NILFS_MDT (struct inode*) ;

__attribute__((used)) static inline struct nilfs_sufile_info *NILFS_SUI(struct inode *sufile)
{
 return (struct nilfs_sufile_info *)NILFS_MDT(sufile);
}
