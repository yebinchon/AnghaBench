
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw_phys_grp {size_t type; } ;


 size_t ARRAY_SIZE (char const* const*) ;

__attribute__((used)) static inline const char*
get_phys_name(struct snd_efw_phys_grp *grp, bool input)
{
 static const char *const ch_type[] = {
  "Analog", "S/PDIF", "ADAT", "S/PDIF or ADAT", "Mirroring",
  "Headphones", "I2S", "Guitar", "Pirzo Guitar", "Guitar String",
 };

 if (grp->type < ARRAY_SIZE(ch_type))
  return ch_type[grp->type];
 else if (input)
  return "Input";
 else
  return "Output";
}
