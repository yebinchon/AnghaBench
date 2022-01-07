
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 scalar_t__ MAX_INLINE_DATA (struct inode*) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_post_read_required (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;

bool f2fs_may_inline_data(struct inode *inode)
{
 if (f2fs_is_atomic_file(inode))
  return 0;

 if (!S_ISREG(inode->i_mode) && !S_ISLNK(inode->i_mode))
  return 0;

 if (i_size_read(inode) > MAX_INLINE_DATA(inode))
  return 0;

 if (f2fs_post_read_required(inode))
  return 0;

 return 1;
}
