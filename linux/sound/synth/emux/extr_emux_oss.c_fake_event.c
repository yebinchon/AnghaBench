
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; int param; int value; } ;
struct TYPE_3__ {TYPE_2__ control; } ;
struct snd_seq_event {TYPE_1__ data; int type; } ;
struct snd_emux_port {int dummy; } ;
struct snd_emux {int dummy; } ;
typedef int ev ;


 int SNDRV_SEQ_EVENT_CONTROLLER ;
 int memset (struct snd_seq_event*,int ,int) ;
 int snd_emux_event_input (struct snd_seq_event*,int ,struct snd_emux_port*,int,int) ;

__attribute__((used)) static void
fake_event(struct snd_emux *emu, struct snd_emux_port *port, int ch, int param, int val, int atomic, int hop)
{
 struct snd_seq_event ev;
 memset(&ev, 0, sizeof(ev));
 ev.type = SNDRV_SEQ_EVENT_CONTROLLER;
 ev.data.control.channel = ch;
 ev.data.control.param = param;
 ev.data.control.value = val;
 snd_emux_event_input(&ev, 0, port, atomic, hop);
}
