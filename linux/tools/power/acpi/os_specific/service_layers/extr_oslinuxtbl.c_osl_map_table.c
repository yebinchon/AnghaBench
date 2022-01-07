
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {char* signature; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_COMPARE_NAMESEG (char*,char*) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 scalar_t__ ACPI_VALIDATE_RSDP_SIG (char*) ;
 int AE_BAD_ADDRESS ;
 int AE_BAD_HEADER ;
 int AE_BAD_SIGNATURE ;
 int AE_INVALID_TABLE_LENGTH ;
 int AE_OK ;
 struct acpi_table_header* acpi_os_map_memory (int ,int) ;
 int acpi_os_unmap_memory (struct acpi_table_header*,int) ;
 int ap_get_table_length (struct acpi_table_header*) ;
 int ap_is_valid_checksum (struct acpi_table_header*) ;
 int fprintf (int ,char*,int,...) ;
 int osl_get_last_status (int ) ;
 int stderr ;

__attribute__((used)) static acpi_status
osl_map_table(acpi_size address,
       char *signature, struct acpi_table_header **table)
{
 struct acpi_table_header *mapped_table;
 u32 length;

 if (!address) {
  return (AE_BAD_ADDRESS);
 }







 mapped_table =
     acpi_os_map_memory(address, sizeof(struct acpi_table_header));
 if (!mapped_table) {
  fprintf(stderr, "Could not map table header at 0x%8.8X%8.8X\n",
   ACPI_FORMAT_UINT64(address));
  return (osl_get_last_status(AE_BAD_ADDRESS));
 }



 if (signature) {
  if (ACPI_VALIDATE_RSDP_SIG(signature)) {
   if (!ACPI_VALIDATE_RSDP_SIG(mapped_table->signature)) {
    acpi_os_unmap_memory(mapped_table,
           sizeof(struct
           acpi_table_header));
    return (AE_BAD_SIGNATURE);
   }
  } else
      if (!ACPI_COMPARE_NAMESEG
   (signature, mapped_table->signature)) {
   acpi_os_unmap_memory(mapped_table,
          sizeof(struct acpi_table_header));
   return (AE_BAD_SIGNATURE);
  }
 }



 length = ap_get_table_length(mapped_table);
 acpi_os_unmap_memory(mapped_table, sizeof(struct acpi_table_header));
 if (length == 0) {
  return (AE_BAD_HEADER);
 }

 mapped_table = acpi_os_map_memory(address, length);
 if (!mapped_table) {
  fprintf(stderr,
   "Could not map table at 0x%8.8X%8.8X length %8.8X\n",
   ACPI_FORMAT_UINT64(address), length);
  return (osl_get_last_status(AE_INVALID_TABLE_LENGTH));
 }

 (void)ap_is_valid_checksum(mapped_table);

 *table = mapped_table;
 return (AE_OK);
}
