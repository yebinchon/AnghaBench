
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_dir_entry_2 {int rec_len; } ;


 int ext4_rec_len_from_disk (int ,unsigned long) ;

__attribute__((used)) static inline struct ext4_dir_entry_2 *
ext4_next_entry(struct ext4_dir_entry_2 *p, unsigned long blocksize)
{
 return (struct ext4_dir_entry_2 *)((char *)p +
  ext4_rec_len_from_disk(p->rec_len, blocksize));
}
