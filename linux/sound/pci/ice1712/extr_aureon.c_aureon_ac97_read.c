
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct aureon_spec* spec; } ;
struct aureon_spec {unsigned short* stac9744; } ;



__attribute__((used)) static unsigned short aureon_ac97_read(struct snd_ice1712 *ice, unsigned short reg)
{
 struct aureon_spec *spec = ice->spec;
 return spec->stac9744[(reg & 0x7F) >> 1];
}
