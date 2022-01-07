
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {char* signature; int length; } ;


 int ACPI_FREE (struct acpi_table_header*) ;
 int acpi_ut_valid_nameseg (char*) ;
 int ap_dump_table_buffer (struct acpi_table_header*,int ,int ) ;
 struct acpi_table_header* ap_get_table_from_file (char*,int*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ gbl_verbose_mode ;
 int stderr ;

int ap_dump_table_from_file(char *pathname)
{
 struct acpi_table_header *table;
 u32 file_size = 0;
 int table_status = -1;



 table = ap_get_table_from_file(pathname, &file_size);
 if (!table) {
  return (-1);
 }

 if (!acpi_ut_valid_nameseg(table->signature)) {
  fprintf(stderr,
   "No valid ACPI signature was found in input file %s\n",
   pathname);
 }



 if (table->length > file_size) {
  fprintf(stderr,
   "Table length (0x%X) is too large for input file (0x%X) %s\n",
   table->length, file_size, pathname);
  goto exit;
 }

 if (gbl_verbose_mode) {
  fprintf(stderr,
   "Input file:  %s contains table [%4.4s], 0x%X (%u) bytes\n",
   pathname, table->signature, file_size, file_size);
 }

 table_status = ap_dump_table_buffer(table, 0, 0);

exit:
 ACPI_FREE(table);
 return (table_status);
}
