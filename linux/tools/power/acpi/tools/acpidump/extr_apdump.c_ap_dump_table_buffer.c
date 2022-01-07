
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {char* signature; } ;
typedef int acpi_physical_address ;


 int ACPI_CAST_PTR (int ,struct acpi_table_header*) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int DB_BYTE_DISPLAY ;
 int acpi_tb_print_table_header (int ,struct acpi_table_header*) ;
 int acpi_ut_dump_buffer_to_file (int ,int ,int ,int ,int ) ;
 int ap_get_table_length (struct acpi_table_header*) ;
 int ap_write_to_binary_file (struct acpi_table_header*,int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ gbl_binary_mode ;
 int gbl_output_file ;
 scalar_t__ gbl_summary_mode ;
 int u8 ;

__attribute__((used)) static int
ap_dump_table_buffer(struct acpi_table_header *table,
       u32 instance, acpi_physical_address address)
{
 u32 table_length;

 table_length = ap_get_table_length(table);



 if (gbl_summary_mode) {
  acpi_tb_print_table_header(address, table);
  return (0);
 }



 if (gbl_binary_mode) {
  return (ap_write_to_binary_file(table, instance));
 }






 fprintf(gbl_output_file, "%4.4s @ 0x%8.8X%8.8X\n",
  table->signature, ACPI_FORMAT_UINT64(address));

 acpi_ut_dump_buffer_to_file(gbl_output_file,
        ACPI_CAST_PTR(u8, table), table_length,
        DB_BYTE_DISPLAY, 0);
 fprintf(gbl_output_file, "\n");
 return (0);
}
