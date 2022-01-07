
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct hdspm {int io_type; } ;







 unsigned long long div_u64 (unsigned long long,unsigned long long) ;
 int snd_BUG () ;

__attribute__((used)) static u64 hdspm_calc_dds_value(struct hdspm *hdspm, u64 period)
{
 u64 freq_const;

 if (period == 0)
  return 0;

 switch (hdspm->io_type) {
 case 130:
 case 132:
  freq_const = 110069313433624ULL;
  break;
 case 128:
 case 131:
  freq_const = 104857600000000ULL;
  break;
 case 129:
  freq_const = 131072000000000ULL;
  break;
 default:
  snd_BUG();
  return 0;
 }

 return div_u64(freq_const, period);
}
