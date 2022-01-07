
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;

__attribute__((used)) static inline bool f2fs_encrypted_file(struct inode *inode)
{
 return IS_ENCRYPTED(inode) && S_ISREG(inode->i_mode);
}
