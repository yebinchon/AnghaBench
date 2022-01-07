
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_BAD_HEADER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 scalar_t__ ap_get_table_length (struct acpi_table_header*) ;
 struct acpi_table_header* calloc (int,scalar_t__) ;
 int memcpy (struct acpi_table_header*,struct acpi_table_header*,scalar_t__) ;
 int osl_map_table (int ,int *,struct acpi_table_header**) ;
 int osl_table_initialize () ;
 int osl_unmap_table (struct acpi_table_header*) ;

acpi_status
acpi_os_get_table_by_address(acpi_physical_address address,
        struct acpi_table_header **table)
{
 u32 table_length;
 struct acpi_table_header *mapped_table;
 struct acpi_table_header *local_table = ((void*)0);
 acpi_status status = AE_OK;



 status = osl_table_initialize();
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 status = osl_map_table(address, ((void*)0), &mapped_table);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 table_length = ap_get_table_length(mapped_table);
 if (table_length == 0) {
  status = AE_BAD_HEADER;
  goto exit;
 }

 local_table = calloc(1, table_length);
 if (!local_table) {
  status = AE_NO_MEMORY;
  goto exit;
 }

 memcpy(local_table, mapped_table, table_length);

exit:
 osl_unmap_table(mapped_table);
 *table = local_table;
 return (status);
}
