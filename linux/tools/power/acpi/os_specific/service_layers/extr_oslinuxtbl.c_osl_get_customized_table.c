
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_physical_address ;


 int ACPI_COMPARE_NAMESEG (char*,char*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NAMESEG_SIZE ;
 int AE_LIMIT ;
 int AE_NOT_FOUND ;
 int PATH_MAX ;
 int REQUEST_FILE_ONLY ;
 int acpi_os_close_directory (void*) ;
 char* acpi_os_get_next_filename (void*) ;
 void* acpi_os_open_directory (char*,char*,int ) ;
 int osl_get_last_status (int ) ;
 int osl_read_table_from_file (char*,int ,int *,struct acpi_table_header**) ;
 int osl_table_name_from_file (char*,char*,scalar_t__*) ;
 int sprintf (char*,char*,char*,char*,...) ;

__attribute__((used)) static acpi_status
osl_get_customized_table(char *pathname,
    char *signature,
    u32 instance,
    struct acpi_table_header **table,
    acpi_physical_address *address)
{
 void *table_dir;
 u32 current_instance = 0;
 char temp_name[ACPI_NAMESEG_SIZE];
 char table_filename[PATH_MAX];
 char *filename;
 acpi_status status;



 table_dir = acpi_os_open_directory(pathname, "*", REQUEST_FILE_ONLY);
 if (!table_dir) {
  return (osl_get_last_status(AE_NOT_FOUND));
 }



 while ((filename = acpi_os_get_next_filename(table_dir))) {



  if (!ACPI_COMPARE_NAMESEG(filename, signature)) {
   continue;
  }



  status =
      osl_table_name_from_file(filename, temp_name,
          &current_instance);



  if (ACPI_FAILURE(status) || current_instance != instance) {
   continue;
  }



  if (instance != 0) {
   sprintf(table_filename, "%s/%4.4s%d", pathname,
    temp_name, instance);
  } else {
   sprintf(table_filename, "%s/%4.4s", pathname,
    temp_name);
  }
  break;
 }

 acpi_os_close_directory(table_dir);

 if (!filename) {
  return (AE_LIMIT);
 }



 *address = 0;
 status = osl_read_table_from_file(table_filename, 0, ((void*)0), table);

 return (status);
}
