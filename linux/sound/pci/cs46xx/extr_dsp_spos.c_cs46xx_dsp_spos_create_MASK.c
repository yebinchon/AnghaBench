#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_cs46xx {int dummy; } ;
struct dsp_symbol_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  symbols; scalar_t__ highest_frag_index; scalar_t__ nsymbols; } ;
struct TYPE_3__ {struct dsp_spos_instance* data; scalar_t__ size; scalar_t__ offset; } ;
struct dsp_spos_instance {int spdif_in_sample_rate; int dac_volume_right; int dac_volume_left; int spdif_input_volume_right; int spdif_input_volume_left; unsigned int spdif_csuv_default; unsigned int spdif_csuv_stream; TYPE_2__ symbol_table; TYPE_1__ code; struct dsp_spos_instance* modules; scalar_t__ nmodules; scalar_t__ ntask; scalar_t__ nscb; } ;
struct dsp_module_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_CODE_BYTE_SIZE ; 
 int /*<<< orphan*/  DSP_MAX_MODULES ; 
 int /*<<< orphan*/  DSP_MAX_SYMBOLS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SNDRV_PCM_DEFAULT_CON_SPDIF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsp_spos_instance*) ; 
 struct dsp_spos_instance* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsp_spos_instance* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct dsp_spos_instance* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct dsp_spos_instance *FUNC9 (struct snd_cs46xx * chip)
{
	struct dsp_spos_instance * ins = FUNC6(sizeof(struct dsp_spos_instance), GFP_KERNEL);

	if (ins == NULL)
		return NULL;

	/* better to use vmalloc for this big table */
	ins->symbol_table.symbols =
		FUNC8(FUNC1(DSP_MAX_SYMBOLS,
				   sizeof(struct dsp_symbol_entry)));
	ins->code.data = FUNC4(DSP_CODE_BYTE_SIZE, GFP_KERNEL);
	ins->modules = FUNC5(DSP_MAX_MODULES,
				     sizeof(struct dsp_module_desc),
				     GFP_KERNEL);
	if (!ins->symbol_table.symbols || !ins->code.data || !ins->modules) {
		FUNC2(chip);
		goto error;
	}
	ins->symbol_table.nsymbols = 0;
	ins->symbol_table.highest_frag_index = 0;
	ins->code.offset = 0;
	ins->code.size = 0;
	ins->nscb = 0;
	ins->ntask = 0;
	ins->nmodules = 0;

	/* default SPDIF input sample rate
	   to 48000 khz */
	ins->spdif_in_sample_rate = 48000;

	/* maximize volume */
	ins->dac_volume_right = 0x8000;
	ins->dac_volume_left = 0x8000;
	ins->spdif_input_volume_right = 0x8000;
	ins->spdif_input_volume_left = 0x8000;

	/* set left and right validity bits and
	   default channel status */
	ins->spdif_csuv_default =
		ins->spdif_csuv_stream =
	 /* byte 0 */  ((unsigned int)FUNC0(  (SNDRV_PCM_DEFAULT_CON_SPDIF        & 0xff)) << 24) |
	 /* byte 1 */  ((unsigned int)FUNC0( ((SNDRV_PCM_DEFAULT_CON_SPDIF >> 8) & 0xff)) << 16) |
	 /* byte 3 */   (unsigned int)FUNC0(  (SNDRV_PCM_DEFAULT_CON_SPDIF >> 24) & 0xff) |
	 /* left and right validity bits */ (1 << 13) | (1 << 12);

	return ins;

error:
	FUNC3(ins->modules);
	FUNC3(ins->code.data);
	FUNC7(ins->symbol_table.symbols);
	FUNC3(ins);
	return NULL;
}