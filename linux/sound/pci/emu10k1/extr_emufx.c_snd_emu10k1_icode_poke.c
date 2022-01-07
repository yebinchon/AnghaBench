
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1_fx8010_code {int name; } ;
struct TYPE_2__ {int dbg; int lock; int name; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; scalar_t__ audigy; } ;


 int A_DBG ;
 int A_DBG_SINGLE_STEP ;
 int DBG ;
 int EMU10K1_DBG_SINGLE_STEP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_emu10k1_add_controls (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ;
 int snd_emu10k1_code_poke (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ;
 int snd_emu10k1_del_controls (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ;
 int snd_emu10k1_gpr_poke (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,int) ;
 int snd_emu10k1_tram_poke (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ;
 int snd_emu10k1_verify_controls (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int snd_emu10k1_icode_poke(struct snd_emu10k1 *emu,
      struct snd_emu10k1_fx8010_code *icode,
      bool in_kernel)
{
 int err = 0;

 mutex_lock(&emu->fx8010.lock);
 err = snd_emu10k1_verify_controls(emu, icode, in_kernel);
 if (err < 0)
  goto __error;
 strlcpy(emu->fx8010.name, icode->name, sizeof(emu->fx8010.name));


 if (emu->audigy)
  snd_emu10k1_ptr_write(emu, A_DBG, 0, emu->fx8010.dbg | A_DBG_SINGLE_STEP);
 else
  snd_emu10k1_ptr_write(emu, DBG, 0, emu->fx8010.dbg | EMU10K1_DBG_SINGLE_STEP);

 err = snd_emu10k1_del_controls(emu, icode, in_kernel);
 if (err < 0)
  goto __error;
 err = snd_emu10k1_gpr_poke(emu, icode, in_kernel);
 if (err < 0)
  goto __error;
 err = snd_emu10k1_tram_poke(emu, icode, in_kernel);
 if (err < 0)
  goto __error;
 err = snd_emu10k1_code_poke(emu, icode, in_kernel);
 if (err < 0)
  goto __error;
 err = snd_emu10k1_add_controls(emu, icode, in_kernel);
 if (err < 0)
  goto __error;

 if (emu->audigy)
  snd_emu10k1_ptr_write(emu, A_DBG, 0, emu->fx8010.dbg);
 else
  snd_emu10k1_ptr_write(emu, DBG, 0, emu->fx8010.dbg);
      __error:
 mutex_unlock(&emu->fx8010.lock);
 return err;
}
