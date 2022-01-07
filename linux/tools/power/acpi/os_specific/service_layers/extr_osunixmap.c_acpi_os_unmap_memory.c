
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int acpi_size ;
typedef int acpi_physical_address ;


 int ACPI_TO_INTEGER (void*) ;
 int acpi_os_get_page_size () ;
 int munmap (int *,int) ;

void acpi_os_unmap_memory(void *where, acpi_size length)
{
 acpi_physical_address offset;
 acpi_size page_size;

 page_size = acpi_os_get_page_size();
 offset = ACPI_TO_INTEGER(where) % page_size;
 munmap((u8 *)where - offset, (length + offset));
}
