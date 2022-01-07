
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_size ;


 int PAGE_SIZE ;
 int _SC_PAGESIZE ;
 int sysconf (int ) ;

__attribute__((used)) static acpi_size acpi_os_get_page_size(void)
{




 return sysconf(_SC_PAGESIZE);

}
