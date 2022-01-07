
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int dummy; } ;
typedef int acpi_size ;
typedef int ACPI_FILE ;


 struct acpi_table_header* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_FREE (struct acpi_table_header*) ;
 int ACPI_UINT32_MAX ;
 int cm_get_file_size (int ) ;
 int fclose (int ) ;
 int fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (struct acpi_table_header*,int,int,int ) ;
 int stderr ;

struct acpi_table_header *ap_get_table_from_file(char *pathname,
       u32 *out_file_size)
{
 struct acpi_table_header *buffer = ((void*)0);
 ACPI_FILE file;
 u32 file_size;
 acpi_size actual;



 file = fopen(pathname, "rb");
 if (!file) {
  fprintf(stderr, "Could not open input file: %s\n", pathname);
  return (((void*)0));
 }



 file_size = cm_get_file_size(file);
 if (file_size == ACPI_UINT32_MAX) {
  fprintf(stderr,
   "Could not get input file size: %s\n", pathname);
  goto cleanup;
 }



 buffer = ACPI_ALLOCATE_ZEROED(file_size);
 if (!buffer) {
  fprintf(stderr,
   "Could not allocate file buffer of size: %u\n",
   file_size);
  goto cleanup;
 }



 actual = fread(buffer, 1, file_size, file);
 if (actual != file_size) {
  fprintf(stderr, "Could not read input file: %s\n", pathname);
  ACPI_FREE(buffer);
  buffer = ((void*)0);
  goto cleanup;
 }

 *out_file_size = file_size;

cleanup:
 fclose(file);
 return (buffer);
}
