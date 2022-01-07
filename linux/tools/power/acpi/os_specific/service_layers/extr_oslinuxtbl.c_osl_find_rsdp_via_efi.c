
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_physical_address ;
typedef int FILE ;


 int EFI_SYSTAB ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ osl_find_rsdp_via_efi_by_keyword (int *,char*) ;

__attribute__((used)) static acpi_physical_address osl_find_rsdp_via_efi(void)
{
 FILE *file;
 acpi_physical_address address = 0;

 file = fopen(EFI_SYSTAB, "r");
 if (file) {
  address = osl_find_rsdp_via_efi_by_keyword(file, "ACPI20");
  if (!address) {
   address =
       osl_find_rsdp_via_efi_by_keyword(file, "ACPI");
  }
  fclose(file);
 }

 return (address);
}
