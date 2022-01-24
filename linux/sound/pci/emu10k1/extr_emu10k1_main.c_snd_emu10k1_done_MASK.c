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
struct snd_emu10k1 {scalar_t__ port; scalar_t__ audigy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADCBA ; 
 int /*<<< orphan*/  ADCBS ; 
 int /*<<< orphan*/  ADCBS_BUFSIZE_NONE ; 
 int /*<<< orphan*/  A_DBG ; 
 int /*<<< orphan*/  A_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  CLIEH ; 
 int /*<<< orphan*/  CLIEL ; 
 int /*<<< orphan*/  CPF ; 
 int /*<<< orphan*/  CVCF ; 
 int /*<<< orphan*/  DBG ; 
 int /*<<< orphan*/  DCYSUSV ; 
 int /*<<< orphan*/  EMU10K1_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  FXBA ; 
 int /*<<< orphan*/  FXBS ; 
 int /*<<< orphan*/  FXWC ; 
 scalar_t__ HCFG ; 
 int HCFG_LOCKSOUNDCACHE ; 
 int HCFG_LOCKTANKCACHE_MASK ; 
 int HCFG_MUTEBUTTONENABLE ; 
 scalar_t__ INTE ; 
 int /*<<< orphan*/  MICBA ; 
 int /*<<< orphan*/  MICBS ; 
 int NUM_G ; 
 int /*<<< orphan*/  PTB ; 
 int /*<<< orphan*/  PTRX ; 
 int /*<<< orphan*/  SOLEH ; 
 int /*<<< orphan*/  SOLEL ; 
 int /*<<< orphan*/  TCB ; 
 int /*<<< orphan*/  TCBS ; 
 int /*<<< orphan*/  TCBS_BUFFSIZE_16K ; 
 int /*<<< orphan*/  VTFT ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct snd_emu10k1 *emu)
{
	int ch;

	FUNC0(0, emu->port + INTE);

	/*
	 *  Shutdown the chip
	 */
	for (ch = 0; ch < NUM_G; ch++)
		FUNC1(emu, DCYSUSV, ch, 0);
	for (ch = 0; ch < NUM_G; ch++) {
		FUNC1(emu, VTFT, ch, 0);
		FUNC1(emu, CVCF, ch, 0);
		FUNC1(emu, PTRX, ch, 0);
		FUNC1(emu, CPF, ch, 0);
	}

	/* reset recording buffers */
	FUNC1(emu, MICBS, 0, 0);
	FUNC1(emu, MICBA, 0, 0);
	FUNC1(emu, FXBS, 0, 0);
	FUNC1(emu, FXBA, 0, 0);
	FUNC1(emu, FXWC, 0, 0);
	FUNC1(emu, ADCBS, 0, ADCBS_BUFSIZE_NONE);
	FUNC1(emu, ADCBA, 0, 0);
	FUNC1(emu, TCBS, 0, TCBS_BUFFSIZE_16K);
	FUNC1(emu, TCB, 0, 0);
	if (emu->audigy)
		FUNC1(emu, A_DBG, 0, A_DBG_SINGLE_STEP);
	else
		FUNC1(emu, DBG, 0, EMU10K1_DBG_SINGLE_STEP);

	/* disable channel interrupt */
	FUNC1(emu, CLIEL, 0, 0);
	FUNC1(emu, CLIEH, 0, 0);
	FUNC1(emu, SOLEL, 0, 0);
	FUNC1(emu, SOLEH, 0, 0);

	/* disable audio and lock cache */
	FUNC0(HCFG_LOCKSOUNDCACHE | HCFG_LOCKTANKCACHE_MASK | HCFG_MUTEBUTTONENABLE, emu->port + HCFG);
	FUNC1(emu, PTB, 0, 0);

	return 0;
}