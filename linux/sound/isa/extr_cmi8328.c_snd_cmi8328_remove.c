
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cmi8328 {int port; scalar_t__ gameport; } ;
struct snd_card {struct snd_cmi8328* private_data; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;


 int CFG1 ;
 int CFG1_SB_DISABLE ;
 int CFG2 ;
 int CFG3 ;
 struct snd_card* dev_get_drvdata (struct device*) ;
 struct resource* gameport_get_port_data (scalar_t__) ;
 int gameport_unregister_port (scalar_t__) ;
 int release_and_free_resource (struct resource*) ;
 int snd_card_free (struct snd_card*) ;
 int snd_cmi8328_cfg_write (int ,int ,int ) ;

__attribute__((used)) static int snd_cmi8328_remove(struct device *pdev, unsigned int dev)
{
 struct snd_card *card = dev_get_drvdata(pdev);
 struct snd_cmi8328 *cmi = card->private_data;
 snd_cmi8328_cfg_write(cmi->port, CFG1, CFG1_SB_DISABLE);
 snd_cmi8328_cfg_write(cmi->port, CFG2, 0);
 snd_cmi8328_cfg_write(cmi->port, CFG3, 0);
 snd_card_free(card);
 return 0;
}
