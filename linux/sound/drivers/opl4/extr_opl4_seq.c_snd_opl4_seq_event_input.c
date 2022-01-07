
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int dummy; } ;
struct snd_opl4 {int chset; } ;


 int opl4_ops ;
 int snd_midi_process_event (int *,struct snd_seq_event*,int ) ;

__attribute__((used)) static int snd_opl4_seq_event_input(struct snd_seq_event *ev, int direct,
        void *private_data, int atomic, int hop)
{
 struct snd_opl4 *opl4 = private_data;

 snd_midi_process_event(&opl4_ops, ev, opl4->chset);
 return 0;
}
