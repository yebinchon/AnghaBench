
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 int AE_SUPPORT ;

acpi_status
acpi_os_physical_table_override(struct acpi_table_header *existing_table,
    acpi_physical_address *new_address,
    u32 *new_table_length)
{

 return (AE_SUPPORT);
}
