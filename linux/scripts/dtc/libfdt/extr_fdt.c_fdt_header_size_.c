
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t FDT_V16_SIZE ;
 size_t FDT_V17_SIZE ;
 size_t FDT_V1_SIZE ;
 size_t FDT_V2_SIZE ;
 size_t FDT_V3_SIZE ;

size_t fdt_header_size_(uint32_t version)
{
 if (version <= 1)
  return FDT_V1_SIZE;
 else if (version <= 2)
  return FDT_V2_SIZE;
 else if (version <= 3)
  return FDT_V3_SIZE;
 else if (version <= 16)
  return FDT_V16_SIZE;
 else
  return FDT_V17_SIZE;
}
