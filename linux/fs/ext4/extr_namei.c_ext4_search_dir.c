
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int name_len; int rec_len; } ;
struct buffer_head {int b_size; int b_data; } ;
struct TYPE_2__ {int s_blocksize; } ;


 scalar_t__ ext4_check_dir_entry (struct inode*,int *,struct ext4_dir_entry_2*,struct buffer_head*,int ,int ,unsigned int) ;
 scalar_t__ ext4_match (struct inode*,struct ext4_filename*,struct ext4_dir_entry_2*) ;
 int ext4_rec_len_from_disk (int ,int ) ;

int ext4_search_dir(struct buffer_head *bh, char *search_buf, int buf_size,
      struct inode *dir, struct ext4_filename *fname,
      unsigned int offset, struct ext4_dir_entry_2 **res_dir)
{
 struct ext4_dir_entry_2 * de;
 char * dlimit;
 int de_len;

 de = (struct ext4_dir_entry_2 *)search_buf;
 dlimit = search_buf + buf_size;
 while ((char *) de < dlimit) {


  if ((char *) de + de->name_len <= dlimit &&
      ext4_match(dir, fname, de)) {


   if (ext4_check_dir_entry(dir, ((void*)0), de, bh, bh->b_data,
       bh->b_size, offset))
    return -1;
   *res_dir = de;
   return 1;
  }

  de_len = ext4_rec_len_from_disk(de->rec_len,
      dir->i_sb->s_blocksize);
  if (de_len <= 0)
   return -1;
  offset += de_len;
  de = (struct ext4_dir_entry_2 *) ((char *) de + de_len);
 }
 return 0;
}
