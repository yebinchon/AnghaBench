
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nhlt_acpi_table {int dummy; } ;


 int memunmap (void*) ;

void intel_nhlt_free(struct nhlt_acpi_table *nhlt)
{
 memunmap((void *)nhlt);
}
