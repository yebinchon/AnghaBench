
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ f2fs_encrypted_file (struct inode*) ;
 scalar_t__ fsverity_active (struct inode*) ;

__attribute__((used)) static inline bool f2fs_post_read_required(struct inode *inode)
{
 return f2fs_encrypted_file(inode) || fsverity_active(inode);
}
