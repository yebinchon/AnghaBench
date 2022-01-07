
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum snd_ff_clock_src { ____Placeholder_snd_ff_clock_src } snd_ff_clock_src ;


 int ARRAY_SIZE (char const* const*) ;

const char *snd_ff_proc_get_clk_label(enum snd_ff_clock_src src)
{
 static const char *const labels[] = {
  "Internal",
  "S/PDIF",
  "ADAT1",
  "ADAT2",
  "Word",
  "LTC",
 };

 if (src >= ARRAY_SIZE(labels))
  return ((void*)0);

 return labels[src];
}
