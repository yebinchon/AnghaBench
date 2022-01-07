
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isight {int unit; int mutex; int card; } ;
struct fw_unit {int device; } ;


 struct isight* dev_get_drvdata (int *) ;
 int fw_unit_put (int ) ;
 int isight_pcm_abort (struct isight*) ;
 int isight_stop_streaming (struct isight*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_card_disconnect (int ) ;
 int snd_card_free (int ) ;

__attribute__((used)) static void isight_remove(struct fw_unit *unit)
{
 struct isight *isight = dev_get_drvdata(&unit->device);

 isight_pcm_abort(isight);

 snd_card_disconnect(isight->card);

 mutex_lock(&isight->mutex);
 isight_stop_streaming(isight);
 mutex_unlock(&isight->mutex);


 snd_card_free(isight->card);

 mutex_destroy(&isight->mutex);
 fw_unit_put(isight->unit);
}
