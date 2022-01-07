
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short AC97_3D_CONTROL ;







 unsigned short AZF_AC97_REG_REAL_IO_RW ;

 unsigned short AZF_AC97_REG_UNSUPPORTED ;
 unsigned short AZF_REG_MASK ;
__attribute__((used)) static unsigned short
snd_azf3328_mixer_ac97_map_reg_idx(unsigned short reg)
{
 static const struct {
  unsigned short azf_reg;
 } azf_reg_mapper[] = {
  { 130
   | 145
   | 147 },
  { 133 },

  { 139 },
  { 135 },
  { 141 },
  { 134 },
  { 136 },
  { 137 },
  { 138 },
  { 140 },
  { 129 },
  { 142 },
  { 128 },
  { 132 },
  { 131 },
  { 146 },
  { 143 },
  { 144 },
 };

 unsigned short reg_azf = AZF_AC97_REG_UNSUPPORTED;



 if (reg <= AC97_3D_CONTROL) {
  unsigned short reg_idx = reg / 2;
  reg_azf = azf_reg_mapper[reg_idx].azf_reg;

  if (!(reg_azf & ~AZF_REG_MASK))
   reg_azf |= AZF_AC97_REG_REAL_IO_RW;
 } else {
  switch (reg) {
  case 150:
   reg_azf = 146;
   break;
  case 152:
   reg_azf = 147;
   break;
  case 151:





   reg_azf = 146;
   break;
  case 149:
  case 148:
   reg_azf = 147;
   break;
  }
 }
 return reg_azf;
}
