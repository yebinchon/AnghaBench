
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int dummy; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_LIMIT ;
 int DYNAMIC_TABLE_DIR ;
 int STATIC_TABLE_DIR ;
 int gbl_dump_customized_tables ;
 scalar_t__ gbl_dump_dynamic_tables ;
 scalar_t__ osl_get_bios_table (char*,int ,struct acpi_table_header**,int *) ;
 scalar_t__ osl_get_customized_table (int ,char*,int ,struct acpi_table_header**,int *) ;
 scalar_t__ osl_table_initialize () ;

acpi_status
acpi_os_get_table_by_name(char *signature,
     u32 instance,
     struct acpi_table_header **table,
     acpi_physical_address *address)
{
 acpi_status status;



 status = osl_table_initialize();
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 if (!gbl_dump_customized_tables) {



  status =
      osl_get_bios_table(signature, instance, table, address);
 } else {


  status = osl_get_customized_table(STATIC_TABLE_DIR, signature,
        instance, table, address);
 }

 if (ACPI_FAILURE(status) && status == AE_LIMIT) {
  if (gbl_dump_dynamic_tables) {



   status =
       osl_get_customized_table(DYNAMIC_TABLE_DIR,
           signature, instance, table,
           address);
  }
 }

 return (status);
}
