
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int mutex; } ;
struct snd_card {struct ua101* private_data; } ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void ua101_card_free(struct snd_card *card)
{
 struct ua101 *ua = card->private_data;

 mutex_destroy(&ua->mutex);
}
