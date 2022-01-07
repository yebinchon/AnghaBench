
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int FI_ATOMIC_COMMIT ;
 int is_inode_flag_set (struct inode*,int ) ;

__attribute__((used)) static inline bool f2fs_is_commit_atomic_write(struct inode *inode)
{
 return is_inode_flag_set(inode, FI_ATOMIC_COMMIT);
}
