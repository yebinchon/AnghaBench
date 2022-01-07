
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,char*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_table_header*) ;
 int ACPI_NAMESEG_SIZE ;
 char* ACPI_SIG_FADT ;
 char* ACPI_SIG_MADT ;
 int AE_LIMIT ;
 scalar_t__ AP_MAX_ACPI_FILES ;
 char* acpi_format_exception (int ) ;
 int acpi_os_get_table_by_name (char*,scalar_t__,struct acpi_table_header**,int *) ;
 int acpi_ut_strupr (char*) ;
 int ap_dump_table_buffer (struct acpi_table_header*,scalar_t__,int ) ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int ap_dump_table_by_name(char *signature)
{
 char local_signature[ACPI_NAMESEG_SIZE + 1];
 u32 instance;
 struct acpi_table_header *table;
 acpi_physical_address address;
 acpi_status status;
 int table_status;

 if (strlen(signature) != ACPI_NAMESEG_SIZE) {
  fprintf(stderr,
   "Invalid table signature [%s]: must be exactly 4 characters\n",
   signature);
  return (-1);
 }



 strcpy(local_signature, signature);
 acpi_ut_strupr(local_signature);



 if (ACPI_COMPARE_NAMESEG(local_signature, "FADT")) {
  strcpy(local_signature, ACPI_SIG_FADT);
 } else if (ACPI_COMPARE_NAMESEG(local_signature, "MADT")) {
  strcpy(local_signature, ACPI_SIG_MADT);
 }



 for (instance = 0; instance < AP_MAX_ACPI_FILES; instance++) {
  status = acpi_os_get_table_by_name(local_signature, instance,
         &table, &address);
  if (ACPI_FAILURE(status)) {



   if (status == AE_LIMIT) {
    return (0);
   }

   fprintf(stderr,
    "Could not get ACPI table with signature [%s], %s\n",
    local_signature, acpi_format_exception(status));
   return (-1);
  }

  table_status = ap_dump_table_buffer(table, instance, address);
  ACPI_FREE(table);

  if (table_status) {
   break;
  }
 }



 return (-1);
}
