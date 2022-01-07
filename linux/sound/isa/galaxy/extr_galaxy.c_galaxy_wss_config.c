
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_galaxy {int wss_port; } ;


 int GALAXY_MODE_WSS ;
 int galaxy_set_mode (struct snd_galaxy*,int ) ;
 int wss_detect (int ) ;
 int wss_set_config (int ,int ) ;

__attribute__((used)) static int galaxy_wss_config(struct snd_galaxy *galaxy, u8 wss_config)
{
 int err;

 err = wss_detect(galaxy->wss_port);
 if (err < 0)
  return err;

 wss_set_config(galaxy->wss_port, wss_config);

 err = galaxy_set_mode(galaxy, GALAXY_MODE_WSS);
 if (err < 0)
  return err;

 return 0;
}
