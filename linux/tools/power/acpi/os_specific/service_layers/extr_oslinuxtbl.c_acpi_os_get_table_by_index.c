
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct osl_table_info {scalar_t__ instance; int signature; struct osl_table_info* next; } ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_LIMIT ;
 int acpi_os_get_table_by_name (int ,scalar_t__,struct acpi_table_header**,int *) ;
 scalar_t__ gbl_table_count ;
 struct osl_table_info* gbl_table_list_head ;
 int osl_table_initialize () ;

acpi_status
acpi_os_get_table_by_index(u32 index,
      struct acpi_table_header **table,
      u32 *instance, acpi_physical_address *address)
{
 struct osl_table_info *info;
 acpi_status status;
 u32 i;



 status = osl_table_initialize();
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 if (index >= gbl_table_count) {
  return (AE_LIMIT);
 }



 info = gbl_table_list_head;
 for (i = 0; i < index; i++) {
  info = info->next;
 }



 status = acpi_os_get_table_by_name(info->signature, info->instance,
        table, address);

 if (ACPI_SUCCESS(status)) {
  *instance = info->instance;
 }
 return (status);
}
