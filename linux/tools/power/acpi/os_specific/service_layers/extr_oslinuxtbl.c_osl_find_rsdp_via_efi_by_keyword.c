
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_physical_address ;
typedef int FILE ;


 int SEEK_SET ;
 scalar_t__ fgets (char*,int,int *) ;
 int fseek (int *,int ,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int sscanf (char*,char*,unsigned long long*) ;

__attribute__((used)) static acpi_physical_address
osl_find_rsdp_via_efi_by_keyword(FILE * file, const char *keyword)
{
 char buffer[80];
 unsigned long long address = 0;
 char format[32];

 snprintf(format, 32, "%s=%s", keyword, "%llx");
 fseek(file, 0, SEEK_SET);
 while (fgets(buffer, 80, file)) {
  if (sscanf(buffer, format, &address) == 1) {
   break;
  }
 }

 return ((acpi_physical_address)(address));
}
