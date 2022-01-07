
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int chn; int val; void* code; int p1; int cmd; } ;
struct TYPE_7__ {int dev; int chn; int parm; int note; int code; int cmd; } ;
union evrec {TYPE_3__ l; TYPE_1__ v; } ;
struct TYPE_12__ {int tick; } ;
struct TYPE_10__ {int channel; int value; int param; } ;
struct TYPE_8__ {int channel; int velocity; int note; } ;
struct TYPE_11__ {TYPE_4__ control; TYPE_2__ note; } ;
struct snd_seq_event {int type; TYPE_6__ time; TYPE_5__ data; } ;
struct seq_oss_devinfo {int readq; int seq_mode; } ;
typedef int ossev ;


 void* EV_CHN_COMMON ;
 int EV_CHN_VOICE ;
 int MIDI_CHN_PRESSURE ;
 int MIDI_CTL_CHANGE ;
 int MIDI_KEY_PRESSURE ;
 int MIDI_NOTEOFF ;
 int MIDI_NOTEON ;
 int MIDI_PGM_CHANGE ;
 int MIDI_PITCH_BEND ;







 int memset (union evrec*,int ,int) ;
 int snd_seq_oss_readq_put_event (int ,union evrec*) ;
 int snd_seq_oss_readq_put_timestamp (int ,int ,int ) ;

__attribute__((used)) static int
send_synth_event(struct seq_oss_devinfo *dp, struct snd_seq_event *ev, int dev)
{
 union evrec ossev;

 memset(&ossev, 0, sizeof(ossev));

 switch (ev->type) {
 case 130:
  ossev.v.cmd = MIDI_NOTEON; break;
 case 131:
  ossev.v.cmd = MIDI_NOTEOFF; break;
 case 132:
  ossev.v.cmd = MIDI_KEY_PRESSURE; break;
 case 133:
  ossev.l.cmd = MIDI_CTL_CHANGE; break;
 case 129:
  ossev.l.cmd = MIDI_PGM_CHANGE; break;
 case 134:
  ossev.l.cmd = MIDI_CHN_PRESSURE; break;
 case 128:
  ossev.l.cmd = MIDI_PITCH_BEND; break;
 default:
  return 0;
 }

 ossev.v.dev = dev;

 switch (ev->type) {
 case 130:
 case 131:
 case 132:
  ossev.v.code = EV_CHN_VOICE;
  ossev.v.note = ev->data.note.note;
  ossev.v.parm = ev->data.note.velocity;
  ossev.v.chn = ev->data.note.channel;
  break;
 case 133:
 case 129:
 case 134:
  ossev.l.code = EV_CHN_COMMON;
  ossev.l.p1 = ev->data.control.param;
  ossev.l.val = ev->data.control.value;
  ossev.l.chn = ev->data.control.channel;
  break;
 case 128:
  ossev.l.code = EV_CHN_COMMON;
  ossev.l.val = ev->data.control.value + 8192;
  ossev.l.chn = ev->data.control.channel;
  break;
 }

 snd_seq_oss_readq_put_timestamp(dp->readq, ev->time.tick, dp->seq_mode);
 snd_seq_oss_readq_put_event(dp->readq, &ossev);

 return 0;
}
