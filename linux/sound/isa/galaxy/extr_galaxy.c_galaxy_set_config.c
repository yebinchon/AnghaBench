
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_galaxy {scalar_t__ config_port; } ;


 scalar_t__ CONFIG_PORT_SET ;
 int GALAXY_CONFIG_SIZE ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static void galaxy_set_config(struct snd_galaxy *galaxy, u32 config)
{
 u8 tmp = ioread8(galaxy->config_port + CONFIG_PORT_SET);
 int i;

 iowrite8(tmp | 0x80, galaxy->config_port + CONFIG_PORT_SET);
 for (i = 0; i < GALAXY_CONFIG_SIZE; i++) {
  iowrite8(config, galaxy->config_port + i);
  config >>= 8;
 }
 iowrite8(tmp & 0x7f, galaxy->config_port + CONFIG_PORT_SET);
 msleep(10);
}
