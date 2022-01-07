
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
typedef int u64 ;
typedef int guid_t ;
typedef int * acpi_handle ;


 int ENXIO ;
 union acpi_object* ERR_PTR (int ) ;
 int nfit_ctl_handle ;
 union acpi_object* result ;

__attribute__((used)) static union acpi_object *nfit_test_evaluate_dsm(acpi_handle handle,
  const guid_t *guid, u64 rev, u64 func, union acpi_object *argv4)
{
 if (handle != &nfit_ctl_handle)
  return ERR_PTR(-ENXIO);

 return result;
}
