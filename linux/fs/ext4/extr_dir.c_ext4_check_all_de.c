
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_dir_entry_2 {int rec_len; } ;
struct buffer_head {int dummy; } ;


 int EFSCORRUPTED ;
 scalar_t__ ext4_check_dir_entry (struct inode*,int *,struct ext4_dir_entry_2*,struct buffer_head*,void*,int,unsigned int) ;
 int ext4_rec_len_from_disk (int ,int) ;

int ext4_check_all_de(struct inode *dir, struct buffer_head *bh, void *buf,
        int buf_size)
{
 struct ext4_dir_entry_2 *de;
 int rlen;
 unsigned int offset = 0;
 char *top;

 de = (struct ext4_dir_entry_2 *)buf;
 top = buf + buf_size;
 while ((char *) de < top) {
  if (ext4_check_dir_entry(dir, ((void*)0), de, bh,
      buf, buf_size, offset))
   return -EFSCORRUPTED;
  rlen = ext4_rec_len_from_disk(de->rec_len, buf_size);
  de = (struct ext4_dir_entry_2 *)((char *)de + rlen);
  offset += rlen;
 }
 if ((char *) de > top)
  return -EFSCORRUPTED;

 return 0;
}
