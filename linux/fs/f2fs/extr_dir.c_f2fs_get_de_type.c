
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_dir_entry {size_t file_type; } ;


 unsigned char DT_UNKNOWN ;
 size_t F2FS_FT_MAX ;
 unsigned char* f2fs_filetype_table ;

unsigned char f2fs_get_de_type(struct f2fs_dir_entry *de)
{
 if (de->file_type < F2FS_FT_MAX)
  return f2fs_filetype_table[de->file_type];
 return DT_UNKNOWN;
}
