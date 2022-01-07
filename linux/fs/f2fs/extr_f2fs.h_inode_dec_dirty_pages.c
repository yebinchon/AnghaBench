
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_2__ {int dirty_pages; } ;


 int F2FS_DIRTY_DATA ;
 int F2FS_DIRTY_DENTS ;
 int F2FS_DIRTY_QDATA ;
 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_NOQUOTA (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int atomic_dec (int *) ;
 int dec_page_count (int ,int ) ;

__attribute__((used)) static inline void inode_dec_dirty_pages(struct inode *inode)
{
 if (!S_ISDIR(inode->i_mode) && !S_ISREG(inode->i_mode) &&
   !S_ISLNK(inode->i_mode))
  return;

 atomic_dec(&F2FS_I(inode)->dirty_pages);
 dec_page_count(F2FS_I_SB(inode), S_ISDIR(inode->i_mode) ?
    F2FS_DIRTY_DENTS : F2FS_DIRTY_DATA);
 if (IS_NOQUOTA(inode))
  dec_page_count(F2FS_I_SB(inode), F2FS_DIRTY_QDATA);
}
