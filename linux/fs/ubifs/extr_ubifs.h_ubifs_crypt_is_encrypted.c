
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int flags; } ;
struct inode {int dummy; } ;


 int UBIFS_CRYPT_FL ;
 struct ubifs_inode* ubifs_inode (struct inode const*) ;

__attribute__((used)) static inline bool ubifs_crypt_is_encrypted(const struct inode *inode)
{
 const struct ubifs_inode *ui = ubifs_inode(inode);

 return ui->flags & UBIFS_CRYPT_FL;
}
