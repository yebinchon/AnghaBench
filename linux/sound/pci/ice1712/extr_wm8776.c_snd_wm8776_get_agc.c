
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_wm8776 {int agc_mode; } ;



__attribute__((used)) static void snd_wm8776_get_agc(struct snd_wm8776 *wm, u16 *mode, u16 *nothing)
{
 *mode = wm->agc_mode;
}
