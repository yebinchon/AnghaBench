
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct external_find_info {int dir_ptr; } ;


 int closedir (int ) ;
 int free (void*) ;

void acpi_os_close_directory(void *dir_handle)
{
 struct external_find_info *external_info = dir_handle;



 closedir(external_info->dir_ptr);
 free(dir_handle);
}
