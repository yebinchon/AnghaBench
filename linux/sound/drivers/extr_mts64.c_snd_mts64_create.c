
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct pardevice {int dummy; } ;
struct mts64 {int current_midi_output_port; int current_midi_input_port; struct pardevice* pardev; struct snd_card* card; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mts64* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int snd_mts64_create(struct snd_card *card,
       struct pardevice *pardev,
       struct mts64 **rchip)
{
 struct mts64 *mts;

 *rchip = ((void*)0);

 mts = kzalloc(sizeof(struct mts64), GFP_KERNEL);
 if (mts == ((void*)0))
  return -ENOMEM;


 spin_lock_init(&mts->lock);
 mts->card = card;
 mts->pardev = pardev;
 mts->current_midi_output_port = -1;
 mts->current_midi_input_port = -1;

 *rchip = mts;

 return 0;
}
