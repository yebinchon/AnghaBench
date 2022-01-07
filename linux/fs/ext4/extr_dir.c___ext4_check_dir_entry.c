
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_3__* i_sb; } ;
struct file {int dummy; } ;
struct ext4_dir_entry_2 {int name_len; int inode; int rec_len; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_6__ {int s_blocksize; } ;
struct TYPE_5__ {TYPE_1__* s_es; } ;
struct TYPE_4__ {int s_inodes_count; } ;


 int const EXT4_DIR_REC_LEN (int) ;
 TYPE_2__* EXT4_SB (TYPE_3__*) ;
 int ext4_error_file (struct file*,char const*,unsigned int,int ,char*,char const*,unsigned int,scalar_t__,int const,int,int) ;
 int ext4_error_inode (struct inode*,char const*,unsigned int,int ,char*,char const*,unsigned int,scalar_t__,int const,int,int) ;
 int ext4_rec_len_from_disk (int ,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;

int __ext4_check_dir_entry(const char *function, unsigned int line,
      struct inode *dir, struct file *filp,
      struct ext4_dir_entry_2 *de,
      struct buffer_head *bh, char *buf, int size,
      unsigned int offset)
{
 const char *error_msg = ((void*)0);
 const int rlen = ext4_rec_len_from_disk(de->rec_len,
      dir->i_sb->s_blocksize);

 if (unlikely(rlen < EXT4_DIR_REC_LEN(1)))
  error_msg = "rec_len is smaller than minimal";
 else if (unlikely(rlen % 4 != 0))
  error_msg = "rec_len % 4 != 0";
 else if (unlikely(rlen < EXT4_DIR_REC_LEN(de->name_len)))
  error_msg = "rec_len is too small for name_len";
 else if (unlikely(((char *) de - buf) + rlen > size))
  error_msg = "directory entry overrun";
 else if (unlikely(le32_to_cpu(de->inode) >
   le32_to_cpu(EXT4_SB(dir->i_sb)->s_es->s_inodes_count)))
  error_msg = "inode out of bounds";
 else
  return 0;

 if (filp)
  ext4_error_file(filp, function, line, bh->b_blocknr,
    "bad entry in directory: %s - offset=%u, "
    "inode=%u, rec_len=%d, name_len=%d, size=%d",
    error_msg, offset, le32_to_cpu(de->inode),
    rlen, de->name_len, size);
 else
  ext4_error_inode(dir, function, line, bh->b_blocknr,
    "bad entry in directory: %s - offset=%u, "
    "inode=%u, rec_len=%d, name_len=%d, size=%d",
     error_msg, offset, le32_to_cpu(de->inode),
     rlen, de->name_len, size);

 return 1;
}
