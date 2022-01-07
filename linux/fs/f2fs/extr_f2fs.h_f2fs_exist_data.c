
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int FI_DATA_EXIST ;
 int is_inode_flag_set (struct inode*,int ) ;

__attribute__((used)) static inline int f2fs_exist_data(struct inode *inode)
{
 return is_inode_flag_set(inode, FI_DATA_EXIST);
}
