
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_dbri {TYPE_1__* stream_info; } ;
struct snd_card {int shortname; int mixername; struct snd_dbri* private_data; } ;
struct TYPE_2__ {scalar_t__ right_gain; scalar_t__ left_gain; } ;


 int ARRAY_SIZE (int *) ;
 int DBRI_NO_STREAMS ;
 int DBRI_REC ;
 int EINVAL ;
 int * dbri_controls ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_dbri*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_dbri_mixer(struct snd_card *card)
{
 int idx, err;
 struct snd_dbri *dbri;

 if (snd_BUG_ON(!card || !card->private_data))
  return -EINVAL;
 dbri = card->private_data;

 strcpy(card->mixername, card->shortname);

 for (idx = 0; idx < ARRAY_SIZE(dbri_controls); idx++) {
  err = snd_ctl_add(card,
    snd_ctl_new1(&dbri_controls[idx], dbri));
  if (err < 0)
   return err;
 }

 for (idx = DBRI_REC; idx < DBRI_NO_STREAMS; idx++) {
  dbri->stream_info[idx].left_gain = 0;
  dbri->stream_info[idx].right_gain = 0;
 }

 return 0;
}
