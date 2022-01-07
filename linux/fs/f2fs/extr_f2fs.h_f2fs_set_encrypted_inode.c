
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int f2fs_set_inode_flags (struct inode*) ;
 int file_set_encrypt (struct inode*) ;

__attribute__((used)) static inline void f2fs_set_encrypted_inode(struct inode *inode)
{




}
