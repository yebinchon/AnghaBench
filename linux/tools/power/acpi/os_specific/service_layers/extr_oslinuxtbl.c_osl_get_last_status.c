
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int AE_ACCESS ;
 int AE_NOT_FOUND ;
 int AE_NO_MEMORY ;




 int errno ;

__attribute__((used)) static acpi_status osl_get_last_status(acpi_status default_status)
{

 switch (errno) {
 case 131:
 case 128:

  return (AE_ACCESS);

 case 130:

  return (AE_NOT_FOUND);

 case 129:

  return (AE_NO_MEMORY);

 default:

  return (default_status);
 }
}
