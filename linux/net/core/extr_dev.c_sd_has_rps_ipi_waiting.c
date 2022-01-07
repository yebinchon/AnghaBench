
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softnet_data {int * rps_ipi_list; } ;



__attribute__((used)) static bool sd_has_rps_ipi_waiting(struct softnet_data *sd)
{



 return 0;

}
