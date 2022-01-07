
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_size; int i_ino; int i_sb; } ;
struct buffer_head {int * b_data; } ;


 size_t OMFS_DIR_START ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* omfs_bread (int ,int ) ;

__attribute__((used)) static int omfs_dir_is_empty(struct inode *inode)
{
 int nbuckets = (inode->i_size - OMFS_DIR_START) / 8;
 struct buffer_head *bh;
 u64 *ptr;
 int i;

 bh = omfs_bread(inode->i_sb, inode->i_ino);

 if (!bh)
  return 0;

 ptr = (u64 *) &bh->b_data[OMFS_DIR_START];

 for (i = 0; i < nbuckets; i++, ptr++)
  if (*ptr != ~0)
   break;

 brelse(bh);
 return *ptr != ~0;
}
