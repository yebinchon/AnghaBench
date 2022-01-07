
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int acpi_size ;
typedef int acpi_physical_address ;


 void* ACPI_CAST8 (int *) ;
 int * MAP_FAILED ;
 int MMAP_FLAGS ;
 int O_BINARY ;
 int O_RDONLY ;
 int PROT_READ ;
 char* SYSTEM_MEMORY ;
 int acpi_os_get_page_size () ;
 int close (int) ;
 int fprintf (int ,char*,char*) ;
 int * mmap (int *,int,int ,int ,int,int) ;
 int open (char*,int) ;
 int stderr ;

void *acpi_os_map_memory(acpi_physical_address where, acpi_size length)
{
 u8 *mapped_memory;
 acpi_physical_address offset;
 acpi_size page_size;
 int fd;

 fd = open(SYSTEM_MEMORY, O_RDONLY | O_BINARY);
 if (fd < 0) {
  fprintf(stderr, "Cannot open %s\n", SYSTEM_MEMORY);
  return (((void*)0));
 }



 page_size = acpi_os_get_page_size();
 offset = where % page_size;



 mapped_memory = mmap(((void*)0), (length + offset), PROT_READ, MMAP_FLAGS,
        fd, (where - offset));
 if (mapped_memory == MAP_FAILED) {
  fprintf(stderr, "Cannot map %s\n", SYSTEM_MEMORY);
  close(fd);
  return (((void*)0));
 }

 close(fd);
 return (ACPI_CAST8(mapped_memory + offset));
}
