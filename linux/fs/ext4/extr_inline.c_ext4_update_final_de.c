
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_dir_entry_2 {void* rec_len; scalar_t__ inode; } ;


 int ext4_rec_len_from_disk (void*,int) ;
 void* ext4_rec_len_to_disk (int,int) ;

__attribute__((used)) static void ext4_update_final_de(void *de_buf, int old_size, int new_size)
{
 struct ext4_dir_entry_2 *de, *prev_de;
 void *limit;
 int de_len;

 de = (struct ext4_dir_entry_2 *)de_buf;
 if (old_size) {
  limit = de_buf + old_size;
  do {
   prev_de = de;
   de_len = ext4_rec_len_from_disk(de->rec_len, old_size);
   de_buf += de_len;
   de = (struct ext4_dir_entry_2 *)de_buf;
  } while (de_buf < limit);

  prev_de->rec_len = ext4_rec_len_to_disk(de_len + new_size -
       old_size, new_size);
 } else {

  de->inode = 0;
  de->rec_len = ext4_rec_len_to_disk(new_size, new_size);
 }
}
