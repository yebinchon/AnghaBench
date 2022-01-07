
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double rapl_dram_energy_units ;

__attribute__((used)) static double
rapl_dram_energy_units_probe(int model, double rapl_energy_units)
{


 switch (model) {
 case 129:
 case 130:
 case 128:
  return (rapl_dram_energy_units = 15.3 / 1000000);
 default:
  return (rapl_energy_units);
 }
}
