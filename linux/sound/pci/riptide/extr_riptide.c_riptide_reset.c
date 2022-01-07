
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cmdret {int * retlongs; } ;
typedef int u32 ;
struct snd_riptide {int dummy; } ;
struct cmdif {int cmdtimemin; int is_reset; int hwport; scalar_t__ errcnt; scalar_t__ cmdtimemax; scalar_t__ cmdtime; scalar_t__ cmdcnt; } ;


 int AC97_RESET ;
 int ARM2LBUS_FIFO0 ;
 int ARM2LBUS_FIFO13 ;
 union cmdret CMDRET_ZERO ;
 int DIGITAL_MIXER_OUT0 ;
 int EINVAL ;
 int FM_CMD ;
 int FM_INTDEC ;
 int FM_MERGER ;
 int FM_MIXER ;
 int FM_SPLITTER ;
 int I2S_CMD0 ;
 int I2S_INTDEC ;
 int I2S_MERGER ;
 int I2S_MIXER ;
 scalar_t__ I2S_RATE ;
 int I2S_SPLITTER ;
 int MODEM_CMD ;
 int MODEM_INTDEC ;
 int MODEM_MERGER ;
 int MODEM_MIXER ;
 int MODEM_SPLITTER ;
 int OPL3_SAMPLE ;
 int RESET_TRIES ;
 int SEND_ALST (struct cmdif*,int ) ;
 int SEND_DLST (struct cmdif*,int ) ;
 int SEND_KDMA (struct cmdif*) ;
 int SEND_LSEL (struct cmdif*,int ,int ,int ,int ,int ,int ,int) ;
 int SEND_PLST (struct cmdif*,int ) ;
 int SEND_RACR (struct cmdif*,int ,union cmdret*) ;
 int SEND_SACR (struct cmdif*,int ,int ) ;
 int SEND_SI2S (struct cmdif*,int) ;
 int SEND_SLST (struct cmdif*,int ) ;
 int SEND_SSRC (struct cmdif*,int ,int,int,int) ;
 int SET_AIACK (int ) ;
 int SET_AIE (int ) ;
 int alloclbuspath (struct cmdif*,int ,int ,int *,int *) ;
 int lbus_play_i2s ;
 int lbus_play_modem ;
 int lbus_play_opl3 ;
 int lbus_play_out ;
 int lbus_play_outhp ;
 int setmixer (struct cmdif*,int,int,int) ;
 int snd_printdd (char*,int ,int ) ;
 int try_to_load_firmware (struct cmdif*,struct snd_riptide*) ;
 int writearm (struct cmdif*,int,int,int) ;

__attribute__((used)) static int riptide_reset(struct cmdif *cif, struct snd_riptide *chip)
{
 union cmdret rptr = CMDRET_ZERO;
 int err, tries;

 if (!cif)
  return -EINVAL;

 cif->cmdcnt = 0;
 cif->cmdtime = 0;
 cif->cmdtimemax = 0;
 cif->cmdtimemin = 0xffffffff;
 cif->errcnt = 0;
 cif->is_reset = 0;

 tries = RESET_TRIES;
 do {
  err = try_to_load_firmware(cif, chip);
  if (err < 0)
   return err;
 } while (!err && --tries);

 SEND_SACR(cif, 0, AC97_RESET);
 SEND_RACR(cif, AC97_RESET, &rptr);
 snd_printdd("AC97: 0x%x 0x%x\n", rptr.retlongs[0], rptr.retlongs[1]);

 SEND_PLST(cif, 0);
 SEND_SLST(cif, 0);
 SEND_DLST(cif, 0);
 SEND_ALST(cif, 0);
 SEND_KDMA(cif);

 writearm(cif, 0x301F8, 1, 1);
 writearm(cif, 0x301F4, 1, 1);

 SEND_LSEL(cif, MODEM_CMD, 0, 0, MODEM_INTDEC, MODEM_MERGER,
    MODEM_SPLITTER, MODEM_MIXER);
 setmixer(cif, MODEM_MIXER, 0x7fff, 0x7fff);
 alloclbuspath(cif, ARM2LBUS_FIFO13, lbus_play_modem, ((void*)0), ((void*)0));

 SEND_LSEL(cif, FM_CMD, 0, 0, FM_INTDEC, FM_MERGER, FM_SPLITTER,
    FM_MIXER);
 setmixer(cif, FM_MIXER, 0x7fff, 0x7fff);
 writearm(cif, 0x30648 + FM_MIXER * 4, 0x01, 0x00000005);
 writearm(cif, 0x301A8, 0x02, 0x00000002);
 writearm(cif, 0x30264, 0x08, 0xffffffff);
 alloclbuspath(cif, OPL3_SAMPLE, lbus_play_opl3, ((void*)0), ((void*)0));

 SEND_SSRC(cif, I2S_INTDEC, 48000,
    ((u32) I2S_RATE * 65536) / 48000,
    ((u32) I2S_RATE * 65536) % 48000);
 SEND_LSEL(cif, I2S_CMD0, 0, 0, I2S_INTDEC, I2S_MERGER, I2S_SPLITTER,
    I2S_MIXER);
 SEND_SI2S(cif, 1);
 alloclbuspath(cif, ARM2LBUS_FIFO0, lbus_play_i2s, ((void*)0), ((void*)0));
 alloclbuspath(cif, DIGITAL_MIXER_OUT0, lbus_play_out, ((void*)0), ((void*)0));
 alloclbuspath(cif, DIGITAL_MIXER_OUT0, lbus_play_outhp, ((void*)0), ((void*)0));

 SET_AIACK(cif->hwport);
 SET_AIE(cif->hwport);
 SET_AIACK(cif->hwport);
 cif->is_reset = 1;

 return 0;
}
