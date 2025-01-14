
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {scalar_t__ type; } ;
struct snd_opl3 {int oss_chset; } ;


 scalar_t__ SNDRV_SEQ_EVENT_OSS ;
 int opl3_ops ;
 int snd_midi_process_event (int *,struct snd_seq_event*,int ) ;

__attribute__((used)) static int snd_opl3_oss_event_input(struct snd_seq_event *ev, int direct,
        void *private_data, int atomic, int hop)
{
 struct snd_opl3 *opl3 = private_data;

 if (ev->type != SNDRV_SEQ_EVENT_OSS)
  snd_midi_process_event(&opl3_ops, ev, opl3->oss_chset);
 return 0;
}
