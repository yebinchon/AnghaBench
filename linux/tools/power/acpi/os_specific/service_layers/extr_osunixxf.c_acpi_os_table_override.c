
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;


 int AE_BAD_PARAMETER ;
 int AE_NO_ACPI_TABLES ;
 int AE_OK ;
 int ae_table_override (struct acpi_table_header*,struct acpi_table_header**) ;

acpi_status
acpi_os_table_override(struct acpi_table_header *existing_table,
         struct acpi_table_header **new_table)
{

 if (!existing_table || !new_table) {
  return (AE_BAD_PARAMETER);
 }

 *new_table = ((void*)0);







 return (AE_NO_ACPI_TABLES);

}
