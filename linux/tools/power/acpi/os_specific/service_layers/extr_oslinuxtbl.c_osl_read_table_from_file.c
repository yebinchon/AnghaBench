
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {char* signature; } ;
typedef int s32 ;
typedef int acpi_status ;
typedef int acpi_size ;
typedef int FILE ;


 int ACPI_COMPARE_NAMESEG (char*,char*) ;
 scalar_t__ ACPI_VALIDATE_RSDP_SIG (char*) ;
 int AE_BAD_HEADER ;
 int AE_BAD_SIGNATURE ;
 int AE_INVALID_TABLE_LENGTH ;
 int AE_NOT_FOUND ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int SEEK_SET ;
 int ap_get_table_length (struct acpi_table_header*) ;
 int ap_is_valid_checksum (struct acpi_table_header*) ;
 struct acpi_table_header* calloc (int,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int fread (struct acpi_table_header*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int osl_get_last_status (int ) ;
 int stderr ;

__attribute__((used)) static acpi_status
osl_read_table_from_file(char *filename,
    acpi_size file_offset,
    char *signature, struct acpi_table_header **table)
{
 FILE *table_file;
 struct acpi_table_header header;
 struct acpi_table_header *local_table = ((void*)0);
 u32 table_length;
 s32 count;
 acpi_status status = AE_OK;



 table_file = fopen(filename, "rb");
 if (table_file == ((void*)0)) {
  fprintf(stderr, "Could not open table file: %s\n", filename);
  return (osl_get_last_status(AE_NOT_FOUND));
 }

 fseek(table_file, file_offset, SEEK_SET);



 count = fread(&header, 1, sizeof(struct acpi_table_header), table_file);
 if (count != sizeof(struct acpi_table_header)) {
  fprintf(stderr, "Could not read table header: %s\n", filename);
  status = AE_BAD_HEADER;
  goto exit;
 }



 if (signature) {
  if (ACPI_VALIDATE_RSDP_SIG(signature)) {
   if (!ACPI_VALIDATE_RSDP_SIG(header.signature)) {
    fprintf(stderr,
     "Incorrect RSDP signature: found %8.8s\n",
     header.signature);
    status = AE_BAD_SIGNATURE;
    goto exit;
   }
  } else if (!ACPI_COMPARE_NAMESEG(signature, header.signature)) {
   fprintf(stderr,
    "Incorrect signature: Expecting %4.4s, found %4.4s\n",
    signature, header.signature);
   status = AE_BAD_SIGNATURE;
   goto exit;
  }
 }

 table_length = ap_get_table_length(&header);
 if (table_length == 0) {
  status = AE_BAD_HEADER;
  goto exit;
 }



 local_table = calloc(1, table_length);
 if (!local_table) {
  fprintf(stderr,
   "%4.4s: Could not allocate buffer for table of length %X\n",
   header.signature, table_length);
  status = AE_NO_MEMORY;
  goto exit;
 }

 fseek(table_file, file_offset, SEEK_SET);

 count = fread(local_table, 1, table_length, table_file);
 if (count != table_length) {
  fprintf(stderr, "%4.4s: Could not read table content\n",
   header.signature);
  status = AE_INVALID_TABLE_LENGTH;
  goto exit;
 }



 (void)ap_is_valid_checksum(local_table);

exit:
 fclose(table_file);
 *table = local_table;
 return (status);
}
