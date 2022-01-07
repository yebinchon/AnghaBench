
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_bit2freq (int) ;
 int hdspm_external_sample_rate (struct hdspm*) ;

__attribute__((used)) static int hdspm_external_rate_to_enum(struct hdspm *hdspm)
{
 int rate = hdspm_external_sample_rate(hdspm);
 int i, selected_rate = 0;
 for (i = 1; i < 10; i++)
  if (HDSPM_bit2freq(i) == rate) {
   selected_rate = i;
   break;
  }
 return selected_rate;
}
