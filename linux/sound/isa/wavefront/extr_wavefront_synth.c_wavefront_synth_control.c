
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wavefront_patch_info ;
struct TYPE_10__ {int* rbuf; int* wbuf; int status; int cmd; } ;
typedef TYPE_1__ wavefront_control ;
typedef int u32 ;
struct TYPE_11__ {int interrupts_are_midi; int rom_samples_rdonly; int* sample_status; int debug; int freemem; int control_port; } ;
typedef TYPE_2__ snd_wavefront_t ;
struct TYPE_12__ {TYPE_2__ wavefront; } ;
typedef TYPE_3__ snd_wavefront_card_t ;


 int DPRINT (int ,char*,int ) ;
 int EINVAL ;
 int WF_DEBUG_CMD ;
 int WF_DRUM_BYTES ;
 int WF_MAX_SAMPLE ;
 int WF_PATCH_BYTES ;
 int WF_PROGRAM_BYTES ;
 int demunge_buf (int*,int*,int ) ;
 int demunge_int32 (int*,int) ;
 int memcpy (int*,unsigned char*,int) ;
 int munge_int32 (int ,unsigned char*,int) ;
 int outb (int,int ) ;
 int process_sample_hdr (int*) ;
 int snd_printk (char*,...) ;
 int snd_wavefront_cmd (TYPE_2__*,int ,int*,int*) ;
 int snd_wavefront_midi_disable_virtual (TYPE_3__*) ;
 int snd_wavefront_midi_enable_virtual (TYPE_3__*) ;
 int wavefront_fetch_multisample (TYPE_2__*,int *) ;

__attribute__((used)) static int
wavefront_synth_control (snd_wavefront_card_t *acard,
    wavefront_control *wc)

{
 snd_wavefront_t *dev = &acard->wavefront;
 unsigned char patchnumbuf[2];
 int i;

 DPRINT (WF_DEBUG_CMD, "synth control with "
  "cmd 0x%x\n", wc->cmd);



 switch (wc->cmd) {

 case 141:
  snd_printk ("interrupts disabled.\n");
  outb (0x80|0x20, dev->control_port);
  dev->interrupts_are_midi = 1;
  return 0;

 case 140:
  snd_printk ("interrupts enabled.\n");
  outb (0x80|0x40|0x20, dev->control_port);
  dev->interrupts_are_midi = 1;
  return 0;

 case 138:
  wc->rbuf[0] = dev->interrupts_are_midi;
  return 0;

 case 136:
  dev->rom_samples_rdonly = wc->wbuf[0];
  wc->status = 0;
  return 0;

 case 139:
  i = wc->wbuf[0] | (wc->wbuf[1] << 7);
  if (i <0 || i >= WF_MAX_SAMPLE) {
   snd_printk ("invalid slot ID %d\n",
    i);
   wc->status = EINVAL;
   return -EINVAL;
  }
  wc->rbuf[0] = dev->sample_status[i];
  wc->status = 0;
  return 0;

 case 142:
  dev->debug = wc->wbuf[0];
  snd_printk ("debug = 0x%x\n", dev->debug);
  return 0;

 case 133:
  munge_int32 (*((u32 *) wc->wbuf), patchnumbuf, 2);
  memcpy (wc->wbuf, patchnumbuf, 2);
  break;

 case 134:



  wc->status = wavefront_fetch_multisample
   (dev, (wavefront_patch_info *) wc->rbuf);
  return 0;

 case 131:
  snd_printk ("support for sample alias upload "
   "being considered.\n");
  wc->status = EINVAL;
  return -EINVAL;
 }

 wc->status = snd_wavefront_cmd (dev, wc->cmd, wc->rbuf, wc->wbuf);







 if (wc->status == 0) {
  switch (wc->cmd) {





  case 137:
   dev->freemem = demunge_int32 (wc->rbuf, 4);
   break;

  case 133:
   demunge_buf (wc->rbuf, wc->rbuf, WF_PATCH_BYTES);
   break;

  case 132:
   demunge_buf (wc->rbuf, wc->rbuf, WF_PROGRAM_BYTES);
   break;

  case 135:
   demunge_buf (wc->rbuf, wc->rbuf, WF_DRUM_BYTES - 1);
   break;

  case 130:
   process_sample_hdr (wc->rbuf);
   break;

  case 131:
   snd_printk ("support for "
        "sample aliases still "
        "being considered.\n");
   break;

  case 129:
   snd_wavefront_midi_disable_virtual (acard);
   break;

  case 128:
   snd_wavefront_midi_enable_virtual (acard);
   break;
  }
 }

 return 0;
}
