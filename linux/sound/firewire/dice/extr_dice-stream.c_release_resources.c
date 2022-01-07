
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dice {int * rx_resources; int * tx_resources; } ;


 int MAX_STREAMS ;
 int fw_iso_resources_free (int *) ;

__attribute__((used)) static void release_resources(struct snd_dice *dice)
{
 int i;

 for (i = 0; i < MAX_STREAMS; ++i) {
  fw_iso_resources_free(&dice->tx_resources[i]);
  fw_iso_resources_free(&dice->rx_resources[i]);
 }
}
