
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_dir_entry {int rec_len; } ;


 int nilfs_rec_len_from_disk (int ) ;

__attribute__((used)) static struct nilfs_dir_entry *nilfs_next_entry(struct nilfs_dir_entry *p)
{
 return (struct nilfs_dir_entry *)((char *)p +
       nilfs_rec_len_from_disk(p->rec_len));
}
