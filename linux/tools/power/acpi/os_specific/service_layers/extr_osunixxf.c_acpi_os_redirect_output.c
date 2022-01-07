
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* acpi_gbl_output_file ;

void acpi_os_redirect_output(void *destination)
{

 acpi_gbl_output_file = destination;
}
