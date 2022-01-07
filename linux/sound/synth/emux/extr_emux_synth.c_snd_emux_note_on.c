
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ exclusiveClass; } ;
struct snd_sf_zone {TYPE_2__* sample; TYPE_1__ v; } ;
struct snd_midi_channel {struct snd_emux_effect_table* private; } ;
struct snd_emux_voice {scalar_t__ ch; scalar_t__ state; int key; int note; int velocity; int ontime; struct snd_midi_channel* chan; int * block; struct snd_sf_zone* zone; struct snd_emux_port* port; scalar_t__ time; } ;
struct snd_emux_port {scalar_t__ port_mode; struct snd_emux* emu; } ;
struct snd_emux_effect_table {scalar_t__* flag; } ;
struct TYPE_6__ {scalar_t__ (* prepare ) (struct snd_emux_voice*) ;int (* trigger ) (struct snd_emux_voice*) ;int (* terminate ) (struct snd_emux_voice*) ;struct snd_emux_voice* (* get_voice ) (struct snd_emux*,struct snd_emux_port*) ;} ;
struct snd_emux {int max_voices; int voice_lock; TYPE_3__ ops; struct snd_emux_voice* voices; int use_time; } ;
struct TYPE_5__ {int * block; } ;


 size_t EMUX_FX_COARSE_SAMPLE_START ;
 size_t EMUX_FX_SAMPLE_START ;
 int SNDRV_EMUX_MAX_MULTI_VOICES ;
 scalar_t__ SNDRV_EMUX_PORT_MODE_OSS_SYNTH ;
 scalar_t__ SNDRV_EMUX_ST_OFF ;
 scalar_t__ SNDRV_EMUX_ST_ON ;
 scalar_t__ SNDRV_EMUX_ST_STANDBY ;
 scalar_t__ STATE_IS_PLAYING (scalar_t__) ;
 int exclusive_note_off (struct snd_emux*,struct snd_emux_port*,scalar_t__) ;
 int get_zone (struct snd_emux*,struct snd_emux_port*,int*,int,struct snd_midi_channel*,struct snd_sf_zone**) ;
 int jiffies ;
 int setup_voice (struct snd_emux_voice*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct snd_emux_voice* stub1 (struct snd_emux*,struct snd_emux_port*) ;
 int stub2 (struct snd_emux_voice*) ;
 scalar_t__ stub3 (struct snd_emux_voice*) ;
 int stub4 (struct snd_emux_voice*) ;
 int terminate_note1 (struct snd_emux*,int,struct snd_midi_channel*,int ) ;

void
snd_emux_note_on(void *p, int note, int vel, struct snd_midi_channel *chan)
{
 struct snd_emux *emu;
 int i, key, nvoices;
 struct snd_emux_voice *vp;
 struct snd_sf_zone *table[SNDRV_EMUX_MAX_MULTI_VOICES];
 unsigned long flags;
 struct snd_emux_port *port;

 port = p;
 if (snd_BUG_ON(!port || !chan))
  return;

 emu = port->emu;
 if (snd_BUG_ON(!emu || !emu->ops.get_voice || !emu->ops.trigger))
  return;

 key = note;
 nvoices = get_zone(emu, port, &note, vel, chan, table);
 if (! nvoices)
  return;


 for (i = 0; i < nvoices; i++) {
  struct snd_sf_zone *zp = table[i];
  if (zp && zp->v.exclusiveClass)
   exclusive_note_off(emu, port, zp->v.exclusiveClass);
 }






 spin_lock_irqsave(&emu->voice_lock, flags);
 for (i = 0; i < nvoices; i++) {




  if (table[i] == ((void*)0))
   continue;

  vp = emu->ops.get_voice(emu, port);
  if (vp == ((void*)0) || vp->ch < 0)
   continue;
  if (STATE_IS_PLAYING(vp->state))
   emu->ops.terminate(vp);

  vp->time = emu->use_time++;
  vp->chan = chan;
  vp->port = port;
  vp->key = key;
  vp->note = note;
  vp->velocity = vel;
  vp->zone = table[i];
  if (vp->zone->sample)
   vp->block = vp->zone->sample->block;
  else
   vp->block = ((void*)0);

  setup_voice(vp);

  vp->state = SNDRV_EMUX_ST_STANDBY;
  if (emu->ops.prepare) {
   vp->state = SNDRV_EMUX_ST_OFF;
   if (emu->ops.prepare(vp) >= 0)
    vp->state = SNDRV_EMUX_ST_STANDBY;
  }
 }


 for (i = 0; i < emu->max_voices; i++) {
  vp = &emu->voices[i];
  if (vp->state == SNDRV_EMUX_ST_STANDBY &&
      vp->chan == chan) {
   emu->ops.trigger(vp);
   vp->state = SNDRV_EMUX_ST_ON;
   vp->ontime = jiffies;
  }
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
