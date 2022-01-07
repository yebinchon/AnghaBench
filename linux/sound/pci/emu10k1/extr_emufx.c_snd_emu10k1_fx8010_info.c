
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_emu10k1_fx8010_info {int external_tram_size; int gpr_controls; int * extout_names; int * extin_names; int * fxbus_names; int internal_tram_size; } ;
struct TYPE_3__ {int bytes; } ;
struct TYPE_4__ {unsigned short fxbus_mask; unsigned short extin_mask; unsigned short extout_mask; int gpr_count; TYPE_1__ etram_pages; int itram_size; } ;
struct snd_emu10k1 {TYPE_2__ fx8010; scalar_t__ audigy; } ;


 char** audigy_ins ;
 char** audigy_outs ;
 int copy_string (int ,char*,char*,int) ;
 char** creative_ins ;
 char** creative_outs ;
 char** fxbuses ;

__attribute__((used)) static void snd_emu10k1_fx8010_info(struct snd_emu10k1 *emu,
       struct snd_emu10k1_fx8010_info *info)
{
 char **fxbus, **extin, **extout;
 unsigned short fxbus_mask, extin_mask, extout_mask;
 int res;

 info->internal_tram_size = emu->fx8010.itram_size;
 info->external_tram_size = emu->fx8010.etram_pages.bytes / 2;
 fxbus = fxbuses;
 extin = emu->audigy ? audigy_ins : creative_ins;
 extout = emu->audigy ? audigy_outs : creative_outs;
 fxbus_mask = emu->fx8010.fxbus_mask;
 extin_mask = emu->fx8010.extin_mask;
 extout_mask = emu->fx8010.extout_mask;
 for (res = 0; res < 16; res++, fxbus++, extin++, extout++) {
  copy_string(info->fxbus_names[res], fxbus_mask & (1 << res) ? *fxbus : ((void*)0), "FXBUS", res);
  copy_string(info->extin_names[res], extin_mask & (1 << res) ? *extin : ((void*)0), "Unused", res);
  copy_string(info->extout_names[res], extout_mask & (1 << res) ? *extout : ((void*)0), "Unused", res);
 }
 for (res = 16; res < 32; res++, extout++)
  copy_string(info->extout_names[res], extout_mask & (1 << res) ? *extout : ((void*)0), "Unused", res);
 info->gpr_controls = emu->fx8010.gpr_count;
}
