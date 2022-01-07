
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usX2Y_substream {scalar_t__ urb; int endpoint; } ;


 int NRURBS ;
 int snd_printdd (char*,int ) ;
 int usX2Y_hwdep_urb_release (scalar_t__) ;

__attribute__((used)) static void usX2Y_usbpcm_urbs_release(struct snd_usX2Y_substream *subs)
{
 int i;
 snd_printdd("snd_usX2Y_urbs_release() %i\n", subs->endpoint);
 for (i = 0; i < NRURBS; i++)
  usX2Y_hwdep_urb_release(subs->urb + i);
}
