
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_table_header {int length; scalar_t__ signature; } ;


 int ACPI_VALIDATE_RSDP_SIG (scalar_t__) ;
 int FALSE ;
 int TRUE ;
 int acpi_ut_valid_nameseg (scalar_t__) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

u8 ap_is_valid_header(struct acpi_table_header *table)
{

 if (!ACPI_VALIDATE_RSDP_SIG(table->signature)) {



  if (!acpi_ut_valid_nameseg(table->signature)) {
   fprintf(stderr,
    "Table signature (0x%8.8X) is invalid\n",
    *(u32 *)table->signature);
   return (FALSE);
  }



  if (table->length < sizeof(struct acpi_table_header)) {
   fprintf(stderr, "Table length (0x%8.8X) is invalid\n",
    table->length);
   return (FALSE);
  }
 }

 return (TRUE);
}
