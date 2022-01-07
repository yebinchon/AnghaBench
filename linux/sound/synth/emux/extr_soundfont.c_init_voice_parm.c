
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundfont_voice_parm {int moddelay; int modatkhld; int moddcysus; int modrelease; int voldelay; int volatkhld; int voldcysus; int volrelease; int lfo1delay; int lfo2delay; int cutoff; } ;


 int memset (struct soundfont_voice_parm*,int ,int) ;

__attribute__((used)) static void
init_voice_parm(struct soundfont_voice_parm *pp)
{
 memset(pp, 0, sizeof(*pp));

 pp->moddelay = 0x8000;
 pp->modatkhld = 0x7f7f;
 pp->moddcysus = 0x7f7f;
 pp->modrelease = 0x807f;

 pp->voldelay = 0x8000;
 pp->volatkhld = 0x7f7f;
 pp->voldcysus = 0x7f7f;
 pp->volrelease = 0x807f;

 pp->lfo1delay = 0x8000;
 pp->lfo2delay = 0x8000;

 pp->cutoff = 0xff;
}
