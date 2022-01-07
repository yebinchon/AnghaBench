
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;


 int ACPI_COPY_NAMESEG (char*,char*) ;
 size_t ACPI_NAMESEG_SIZE ;
 int AE_BAD_SIGNATURE ;
 int AE_OK ;
 scalar_t__ isdigit (int) ;
 int sscanf (char*,char*,scalar_t__*) ;
 size_t strlen (char*) ;

__attribute__((used)) static acpi_status
osl_table_name_from_file(char *filename, char *signature, u32 *instance)
{



 if (strlen(filename) < ACPI_NAMESEG_SIZE) {
  return (AE_BAD_SIGNATURE);
 }



 if (isdigit((int)filename[ACPI_NAMESEG_SIZE])) {
  sscanf(&filename[ACPI_NAMESEG_SIZE], "%u", instance);
 } else if (strlen(filename) != ACPI_NAMESEG_SIZE) {
  return (AE_BAD_SIGNATURE);
 } else {
  *instance = 0;
 }



 ACPI_COPY_NAMESEG(signature, filename);
 return (AE_OK);
}
