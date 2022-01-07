
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;


 int WARN_ON_ONCE (int) ;
 int _ext4_get_block (struct inode*,int ,struct buffer_head*,int ) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_unwritten (struct buffer_head*) ;
 int ext4_debug (char*,int ,int) ;
 int ext4_journal_current_handle () ;

__attribute__((used)) static int ext4_dio_get_block_overwrite(struct inode *inode, sector_t iblock,
     struct buffer_head *bh_result, int create)
{
 int ret;

 ext4_debug("ext4_dio_get_block_overwrite: inode %lu, create flag %d\n",
     inode->i_ino, create);

 WARN_ON_ONCE(ext4_journal_current_handle());

 ret = _ext4_get_block(inode, iblock, bh_result, 0);




 WARN_ON_ONCE(!buffer_mapped(bh_result) || buffer_unwritten(bh_result));

 return ret;
}
