
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hdsp {unsigned int dds_value; int system_sample_rate; } ;


 int DDS_NUMERATOR ;
 int div_u64 (int,unsigned int) ;

__attribute__((used)) static int hdsp_dds_offset(struct hdsp *hdsp)
{
 u64 n;
 unsigned int dds_value = hdsp->dds_value;
 int system_sample_rate = hdsp->system_sample_rate;

 if (!dds_value)
  return 0;

 n = DDS_NUMERATOR;




 n = div_u64(n, dds_value);
 if (system_sample_rate >= 112000)
  n *= 4;
 else if (system_sample_rate >= 56000)
  n *= 2;
 return ((int)n) - system_sample_rate;
}
