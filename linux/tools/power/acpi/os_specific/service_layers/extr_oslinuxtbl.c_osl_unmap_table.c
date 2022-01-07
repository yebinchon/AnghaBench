
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;


 int acpi_os_unmap_memory (struct acpi_table_header*,int ) ;
 int ap_get_table_length (struct acpi_table_header*) ;

__attribute__((used)) static void osl_unmap_table(struct acpi_table_header *table)
{
 if (table) {
  acpi_os_unmap_memory(table, ap_get_table_length(table));
 }
}
