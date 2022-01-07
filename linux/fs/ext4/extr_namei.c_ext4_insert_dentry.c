
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_sb; int i_ino; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int name; int name_len; scalar_t__ inode; int file_type; void* rec_len; } ;


 int EXT4_DIR_REC_LEN (int ) ;
 int EXT4_FT_UNKNOWN ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext4_rec_len_from_disk (void*,int) ;
 void* ext4_rec_len_to_disk (int,int) ;
 int ext4_set_de_type (int ,struct ext4_dir_entry_2*,int ) ;
 int fname_len (struct ext4_filename*) ;
 int fname_name (struct ext4_filename*) ;
 int memcpy (int ,int ,int ) ;

void ext4_insert_dentry(struct inode *inode,
   struct ext4_dir_entry_2 *de,
   int buf_size,
   struct ext4_filename *fname)
{

 int nlen, rlen;

 nlen = EXT4_DIR_REC_LEN(de->name_len);
 rlen = ext4_rec_len_from_disk(de->rec_len, buf_size);
 if (de->inode) {
  struct ext4_dir_entry_2 *de1 =
   (struct ext4_dir_entry_2 *)((char *)de + nlen);
  de1->rec_len = ext4_rec_len_to_disk(rlen - nlen, buf_size);
  de->rec_len = ext4_rec_len_to_disk(nlen, buf_size);
  de = de1;
 }
 de->file_type = EXT4_FT_UNKNOWN;
 de->inode = cpu_to_le32(inode->i_ino);
 ext4_set_de_type(inode->i_sb, de, inode->i_mode);
 de->name_len = fname_len(fname);
 memcpy(de->name, fname_name(fname), fname_len(fname));
}
