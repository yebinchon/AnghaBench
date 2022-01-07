
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t umode_t ;
struct nilfs_dir_entry {int file_type; } ;
struct inode {size_t i_mode; } ;


 size_t S_IFMT ;
 size_t S_SHIFT ;
 int * nilfs_type_by_mode ;

__attribute__((used)) static void nilfs_set_de_type(struct nilfs_dir_entry *de, struct inode *inode)
{
 umode_t mode = inode->i_mode;

 de->file_type = nilfs_type_by_mode[(mode & S_IFMT)>>S_SHIFT];
}
