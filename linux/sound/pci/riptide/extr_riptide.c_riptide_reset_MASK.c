#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
union cmdret {int /*<<< orphan*/ * retlongs; } ;
typedef  int u32 ;
struct snd_riptide {int dummy; } ;
struct cmdif {int cmdtimemin; int is_reset; int /*<<< orphan*/  hwport; scalar_t__ errcnt; scalar_t__ cmdtimemax; scalar_t__ cmdtime; scalar_t__ cmdcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_RESET ; 
 int /*<<< orphan*/  ARM2LBUS_FIFO0 ; 
 int /*<<< orphan*/  ARM2LBUS_FIFO13 ; 
 union cmdret CMDRET_ZERO ; 
 int /*<<< orphan*/  DIGITAL_MIXER_OUT0 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FM_CMD ; 
 int /*<<< orphan*/  FM_INTDEC ; 
 int /*<<< orphan*/  FM_MERGER ; 
 int FM_MIXER ; 
 int /*<<< orphan*/  FM_SPLITTER ; 
 int /*<<< orphan*/  I2S_CMD0 ; 
 int /*<<< orphan*/  I2S_INTDEC ; 
 int /*<<< orphan*/  I2S_MERGER ; 
 int I2S_MIXER ; 
 scalar_t__ I2S_RATE ; 
 int /*<<< orphan*/  I2S_SPLITTER ; 
 int /*<<< orphan*/  MODEM_CMD ; 
 int /*<<< orphan*/  MODEM_INTDEC ; 
 int /*<<< orphan*/  MODEM_MERGER ; 
 int MODEM_MIXER ; 
 int /*<<< orphan*/  MODEM_SPLITTER ; 
 int /*<<< orphan*/  OPL3_SAMPLE ; 
 int RESET_TRIES ; 
 int /*<<< orphan*/  FUNC0 (struct cmdif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdif*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdif*,int /*<<< orphan*/ ,union cmdret*) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cmdif*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cmdif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cmdif*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cmdif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lbus_play_i2s ; 
 int /*<<< orphan*/  lbus_play_modem ; 
 int /*<<< orphan*/  lbus_play_opl3 ; 
 int /*<<< orphan*/  lbus_play_out ; 
 int /*<<< orphan*/  lbus_play_outhp ; 
 int /*<<< orphan*/  FUNC13 (struct cmdif*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct cmdif*,struct snd_riptide*) ; 
 int /*<<< orphan*/  FUNC16 (struct cmdif*,int,int,int) ; 

__attribute__((used)) static int FUNC17(struct cmdif *cif, struct snd_riptide *chip)
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
		err = FUNC15(cif, chip);
		if (err < 0)
			return err;
	} while (!err && --tries);

	FUNC6(cif, 0, AC97_RESET);
	FUNC5(cif, AC97_RESET, &rptr);
	FUNC14("AC97: 0x%x 0x%x\n", rptr.retlongs[0], rptr.retlongs[1]);

	FUNC4(cif, 0);
	FUNC8(cif, 0);
	FUNC1(cif, 0);
	FUNC0(cif, 0);
	FUNC2(cif);

	FUNC16(cif, 0x301F8, 1, 1);
	FUNC16(cif, 0x301F4, 1, 1);

	FUNC3(cif, MODEM_CMD, 0, 0, MODEM_INTDEC, MODEM_MERGER,
		  MODEM_SPLITTER, MODEM_MIXER);
	FUNC13(cif, MODEM_MIXER, 0x7fff, 0x7fff);
	FUNC12(cif, ARM2LBUS_FIFO13, lbus_play_modem, NULL, NULL);

	FUNC3(cif, FM_CMD, 0, 0, FM_INTDEC, FM_MERGER, FM_SPLITTER,
		  FM_MIXER);
	FUNC13(cif, FM_MIXER, 0x7fff, 0x7fff);
	FUNC16(cif, 0x30648 + FM_MIXER * 4, 0x01, 0x00000005);
	FUNC16(cif, 0x301A8, 0x02, 0x00000002);
	FUNC16(cif, 0x30264, 0x08, 0xffffffff);
	FUNC12(cif, OPL3_SAMPLE, lbus_play_opl3, NULL, NULL);

	FUNC9(cif, I2S_INTDEC, 48000,
		  ((u32) I2S_RATE * 65536) / 48000,
		  ((u32) I2S_RATE * 65536) % 48000);
	FUNC3(cif, I2S_CMD0, 0, 0, I2S_INTDEC, I2S_MERGER, I2S_SPLITTER,
		  I2S_MIXER);
	FUNC7(cif, 1);
	FUNC12(cif, ARM2LBUS_FIFO0, lbus_play_i2s, NULL, NULL);
	FUNC12(cif, DIGITAL_MIXER_OUT0, lbus_play_out, NULL, NULL);
	FUNC12(cif, DIGITAL_MIXER_OUT0, lbus_play_outhp, NULL, NULL);

	FUNC10(cif->hwport);
	FUNC11(cif->hwport);
	FUNC10(cif->hwport);
	cif->is_reset = 1;

	return 0;
}