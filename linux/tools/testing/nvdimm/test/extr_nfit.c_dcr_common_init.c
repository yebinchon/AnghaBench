
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_nfit_control_region {int vendor_id; int revision_id; int valid_fields; int manufacturing_location; int manufacturing_date; scalar_t__ device_id; } ;


 int cpu_to_be16 (int) ;

__attribute__((used)) static void dcr_common_init(struct acpi_nfit_control_region *dcr)
{
 dcr->vendor_id = 0xabcd;
 dcr->device_id = 0;
 dcr->revision_id = 1;
 dcr->valid_fields = 1;
 dcr->manufacturing_location = 0xa;
 dcr->manufacturing_date = cpu_to_be16(2016);
}
