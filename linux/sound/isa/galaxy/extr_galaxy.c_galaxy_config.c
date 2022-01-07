
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_galaxy {int config; scalar_t__ config_port; } ;


 int GALAXY_CONFIG_MASK ;
 int GALAXY_CONFIG_SIZE ;
 int galaxy_set_config (struct snd_galaxy*,int) ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static void galaxy_config(struct snd_galaxy *galaxy, u32 config)
{
 int i;

 for (i = GALAXY_CONFIG_SIZE; i; i--) {
  u8 tmp = ioread8(galaxy->config_port + i - 1);
  galaxy->config = (galaxy->config << 8) | tmp;
 }
 config |= galaxy->config & GALAXY_CONFIG_MASK;
 galaxy_set_config(galaxy, config);
}
