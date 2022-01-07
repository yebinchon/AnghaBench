
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int time; } ;
struct TYPE_5__ {scalar_t__ code; } ;
union evrec {TYPE_3__ t; TYPE_2__ s; } ;
struct TYPE_4__ {scalar_t__ client; } ;
struct snd_seq_event {scalar_t__ type; int data; TYPE_1__ source; } ;
struct seq_oss_devinfo {scalar_t__ cseq; int * readq; int writeq; } ;


 scalar_t__ SEQ_SYNCTIMER ;
 scalar_t__ SNDRV_SEQ_EVENT_ECHO ;
 int snd_seq_oss_midi_input (struct snd_seq_event*,int,void*) ;
 int snd_seq_oss_readq_put_event (int *,union evrec*) ;
 int snd_seq_oss_writeq_wakeup (int ,int ) ;

int
snd_seq_oss_event_input(struct snd_seq_event *ev, int direct, void *private_data,
   int atomic, int hop)
{
 struct seq_oss_devinfo *dp = (struct seq_oss_devinfo *)private_data;
 union evrec *rec;

 if (ev->type != SNDRV_SEQ_EVENT_ECHO)
  return snd_seq_oss_midi_input(ev, direct, private_data);

 if (ev->source.client != dp->cseq)
  return 0;

 rec = (union evrec*)&ev->data;
 if (rec->s.code == SEQ_SYNCTIMER) {

  snd_seq_oss_writeq_wakeup(dp->writeq, rec->t.time);

 } else {

  if (dp->readq == ((void*)0))
   return 0;
  snd_seq_oss_readq_put_event(dp->readq, rec);
 }
 return 0;
}
