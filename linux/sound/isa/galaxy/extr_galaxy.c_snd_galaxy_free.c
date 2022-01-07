
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_galaxy {int res_port; scalar_t__ port; int res_config_port; scalar_t__ config_port; int config; int res_wss_port; scalar_t__ wss_port; } ;
struct snd_card {struct snd_galaxy* private_data; } ;


 int galaxy_set_config (struct snd_galaxy*,int ) ;
 int ioport_unmap (scalar_t__) ;
 int release_and_free_resource (int ) ;
 int wss_set_config (scalar_t__,int ) ;

__attribute__((used)) static void snd_galaxy_free(struct snd_card *card)
{
 struct snd_galaxy *galaxy = card->private_data;

 if (galaxy->wss_port) {
  wss_set_config(galaxy->wss_port, 0);
  ioport_unmap(galaxy->wss_port);
  release_and_free_resource(galaxy->res_wss_port);
 }
 if (galaxy->config_port) {
  galaxy_set_config(galaxy, galaxy->config);
  ioport_unmap(galaxy->config_port);
  release_and_free_resource(galaxy->res_config_port);
 }
 if (galaxy->port) {
  ioport_unmap(galaxy->port);
  release_and_free_resource(galaxy->res_port);
 }
}
