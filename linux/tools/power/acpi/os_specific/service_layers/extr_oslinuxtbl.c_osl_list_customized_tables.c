
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NAMESEG_SIZE ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int REQUEST_FILE_ONLY ;
 int acpi_os_close_directory (void*) ;
 char* acpi_os_get_next_filename (void*) ;
 void* acpi_os_open_directory (char*,char*,int ) ;
 int osl_add_table_to_list (char*,int ) ;
 int osl_get_last_status (int ) ;
 int osl_table_name_from_file (char*,char*,int *) ;

__attribute__((used)) static acpi_status osl_list_customized_tables(char *directory)
{
 void *table_dir;
 u32 instance;
 char temp_name[ACPI_NAMESEG_SIZE];
 char *filename;
 acpi_status status = AE_OK;



 table_dir = acpi_os_open_directory(directory, "*", REQUEST_FILE_ONLY);
 if (!table_dir) {
  return (osl_get_last_status(AE_NOT_FOUND));
 }



 while ((filename = acpi_os_get_next_filename(table_dir))) {



  status =
      osl_table_name_from_file(filename, temp_name, &instance);



  if (ACPI_FAILURE(status)) {
   continue;
  }



  status = osl_add_table_to_list(temp_name, instance);
  if (ACPI_FAILURE(status)) {
   break;
  }
 }

 acpi_os_close_directory(table_dir);
 return (status);
}
