
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int ntfschar ;
struct TYPE_3__ {int file_name_length; int file_name; } ;
typedef TYPE_1__ FILE_NAME_ATTR ;


 int ntfs_upcase_name (int *,int ,int const*,int const) ;

void ntfs_file_upcase_value(FILE_NAME_ATTR *file_name_attr,
  const ntfschar *upcase, const u32 upcase_len)
{
 ntfs_upcase_name((ntfschar*)&file_name_attr->file_name,
   file_name_attr->file_name_length, upcase, upcase_len);
}
