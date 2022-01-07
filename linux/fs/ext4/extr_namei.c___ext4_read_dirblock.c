
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_ino; } ;
struct ext4_dir_entry {int rec_len; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef scalar_t__ dirblock_type_t ;
struct TYPE_5__ {int comm; } ;
struct TYPE_4__ {int s_blocksize; } ;


 scalar_t__ DIRENT_HTREE ;
 int EFSBADCRC ;
 int EFSCORRUPTED ;
 struct buffer_head* ERR_PTR (int ) ;
 scalar_t__ INDEX ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int __ext4_warning (TYPE_1__*,char const*,unsigned int,char*,int ,unsigned long,int ,int ) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_verified (struct buffer_head*) ;
 TYPE_2__* current ;
 struct buffer_head* ext4_bread (int *,struct inode*,scalar_t__,int ) ;
 scalar_t__ ext4_dirblock_csum_verify (struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_dx_csum_verify (struct inode*,struct ext4_dir_entry*) ;
 int ext4_error_inode (struct inode*,char const*,unsigned int,scalar_t__,char*,...) ;
 int ext4_has_metadata_csum (TYPE_1__*) ;
 int ext4_rec_len_from_disk (int ,int ) ;
 scalar_t__ is_dx (struct inode*) ;
 int set_buffer_verified (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *__ext4_read_dirblock(struct inode *inode,
      ext4_lblk_t block,
      dirblock_type_t type,
      const char *func,
      unsigned int line)
{
 struct buffer_head *bh;
 struct ext4_dir_entry *dirent;
 int is_dx_block = 0;

 bh = ext4_bread(((void*)0), inode, block, 0);
 if (IS_ERR(bh)) {
  __ext4_warning(inode->i_sb, func, line,
          "inode #%lu: lblock %lu: comm %s: "
          "error %ld reading directory block",
          inode->i_ino, (unsigned long)block,
          current->comm, PTR_ERR(bh));

  return bh;
 }
 if (!bh && (type == INDEX || type == DIRENT_HTREE)) {
  ext4_error_inode(inode, func, line, block,
     "Directory hole found for htree %s block",
     (type == INDEX) ? "index" : "leaf");
  return ERR_PTR(-EFSCORRUPTED);
 }
 if (!bh)
  return ((void*)0);
 dirent = (struct ext4_dir_entry *) bh->b_data;

 if (is_dx(inode)) {
  if (block == 0)
   is_dx_block = 1;
  else if (ext4_rec_len_from_disk(dirent->rec_len,
      inode->i_sb->s_blocksize) ==
    inode->i_sb->s_blocksize)
   is_dx_block = 1;
 }
 if (!is_dx_block && type == INDEX) {
  ext4_error_inode(inode, func, line, block,
         "directory leaf block found instead of index block");
  brelse(bh);
  return ERR_PTR(-EFSCORRUPTED);
 }
 if (!ext4_has_metadata_csum(inode->i_sb) ||
     buffer_verified(bh))
  return bh;






 if (is_dx_block && type == INDEX) {
  if (ext4_dx_csum_verify(inode, dirent))
   set_buffer_verified(bh);
  else {
   ext4_error_inode(inode, func, line, block,
      "Directory index failed checksum");
   brelse(bh);
   return ERR_PTR(-EFSBADCRC);
  }
 }
 if (!is_dx_block) {
  if (ext4_dirblock_csum_verify(inode, bh))
   set_buffer_verified(bh);
  else {
   ext4_error_inode(inode, func, line, block,
      "Directory block failed checksum");
   brelse(bh);
   return ERR_PTR(-EFSBADCRC);
  }
 }
 return bh;
}
