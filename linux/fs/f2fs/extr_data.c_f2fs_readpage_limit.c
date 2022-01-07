
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
typedef int loff_t ;
struct TYPE_2__ {int s_maxbytes; } ;


 int CONFIG_FS_VERITY ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_VERITY (struct inode*) ;
 scalar_t__ f2fs_verity_in_progress (struct inode*) ;
 int i_size_read (struct inode*) ;

__attribute__((used)) static inline loff_t f2fs_readpage_limit(struct inode *inode)
{
 if (IS_ENABLED(CONFIG_FS_VERITY) &&
     (IS_VERITY(inode) || f2fs_verity_in_progress(inode)))
  return inode->i_sb->s_maxbytes;

 return i_size_read(inode);
}
