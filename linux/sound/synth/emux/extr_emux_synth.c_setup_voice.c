
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soundfont_voice_parm {int modatkhld; int moddelay; int pefe; int cutoff; int volatkhld; int voldelay; } ;
struct TYPE_4__ {struct soundfont_voice_parm parm; } ;
struct snd_emux_voice {int apan; int avol; int apitch; int ftarget; int ptarget; int vtarget; TYPE_2__ reg; TYPE_1__* zone; } ;
struct TYPE_3__ {TYPE_2__ v; } ;


 int HI_BYTE (int) ;
 int LIMITVALUE (int,int ,int) ;
 int LO_BYTE (int) ;
 int calc_pan (struct snd_emux_voice*) ;
 int calc_pitch (struct snd_emux_voice*) ;
 int calc_volume (struct snd_emux_voice*) ;
 int snd_emux_setup_effect (struct snd_emux_voice*) ;
 int* voltarget ;

__attribute__((used)) static void
setup_voice(struct snd_emux_voice *vp)
{
 struct soundfont_voice_parm *parm;
 int pitch;


 vp->reg = vp->zone->v;






 vp->apan = -1;
 vp->avol = -1;
 vp->apitch = -1;

 calc_volume(vp);
 calc_pitch(vp);
 calc_pan(vp);

 parm = &vp->reg.parm;


 if (LO_BYTE(parm->modatkhld) >= 0x80 && parm->moddelay >= 0x8000) {
  parm->moddelay = 0xbfff;
  pitch = (HI_BYTE(parm->pefe) << 4) + vp->apitch;
  if (pitch > 0xffff)
   pitch = 0xffff;

  vp->ftarget = parm->cutoff + LO_BYTE(parm->pefe);
  LIMITVALUE(vp->ftarget, 0, 255);
  vp->ftarget <<= 8;
 } else {
  vp->ftarget = parm->cutoff;
  vp->ftarget <<= 8;
  pitch = vp->apitch;
 }


 if (pitch != 0xffff) {
  vp->ptarget = 1 << (pitch >> 12);
  if (pitch & 0x800) vp->ptarget += (vp->ptarget*0x102e)/0x2710;
  if (pitch & 0x400) vp->ptarget += (vp->ptarget*0x764)/0x2710;
  if (pitch & 0x200) vp->ptarget += (vp->ptarget*0x389)/0x2710;
  vp->ptarget += (vp->ptarget >> 1);
  if (vp->ptarget > 0xffff) vp->ptarget = 0xffff;
 } else
  vp->ptarget = 0xffff;

 if (LO_BYTE(parm->modatkhld) >= 0x80) {
  parm->modatkhld &= ~0xff;
  parm->modatkhld |= 0x7f;
 }


 vp->vtarget = 0;







 if (LO_BYTE(parm->volatkhld) >= 0x80) {
  parm->volatkhld &= ~0xff;
  parm->volatkhld |= 0x7f;
 }
}
