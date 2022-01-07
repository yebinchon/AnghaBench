
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int ntfschar ;
struct TYPE_4__ {int file_name_length; int file_name; } ;
typedef int IGNORE_CASE_BOOL ;
typedef TYPE_1__ FILE_NAME_ATTR ;


 int ntfs_collate_names (int *,int ,int *,int ,int const,int const,int const*,int const) ;

int ntfs_file_compare_values(FILE_NAME_ATTR *file_name_attr1,
  FILE_NAME_ATTR *file_name_attr2,
  const int err_val, const IGNORE_CASE_BOOL ic,
  const ntfschar *upcase, const u32 upcase_len)
{
 return ntfs_collate_names((ntfschar*)&file_name_attr1->file_name,
   file_name_attr1->file_name_length,
   (ntfschar*)&file_name_attr2->file_name,
   file_name_attr2->file_name_length,
   err_val, ic, upcase, upcase_len);
}
