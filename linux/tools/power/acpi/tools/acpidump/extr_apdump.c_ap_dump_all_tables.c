
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_table_header*) ;
 int AE_LIMIT ;
 scalar_t__ AP_MAX_ACPI_FILES ;
 char* acpi_format_exception (int ) ;
 int acpi_os_get_table_by_index (scalar_t__,struct acpi_table_header**,scalar_t__*,int *) ;
 int ap_dump_table_buffer (struct acpi_table_header*,scalar_t__,int ) ;
 int fprintf (int ,char*,scalar_t__,...) ;
 int stderr ;

int ap_dump_all_tables(void)
{
 struct acpi_table_header *table;
 u32 instance = 0;
 acpi_physical_address address;
 acpi_status status;
 int table_status;
 u32 i;



 for (i = 0; i < AP_MAX_ACPI_FILES; i++) {
  status =
      acpi_os_get_table_by_index(i, &table, &instance, &address);
  if (ACPI_FAILURE(status)) {



   if (status == AE_LIMIT) {
    return (0);
   } else if (i == 0) {
    fprintf(stderr,
     "Could not get ACPI tables, %s\n",
     acpi_format_exception(status));
    return (-1);
   } else {
    fprintf(stderr,
     "Could not get ACPI table at index %u, %s\n",
     i, acpi_format_exception(status));
    continue;
   }
  }

  table_status = ap_dump_table_buffer(table, instance, address);
  ACPI_FREE(table);

  if (table_status) {
   break;
  }
 }



 return (-1);
}
