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
struct snd_seq_oss_reg {struct snd_emux* private_data; int /*<<< orphan*/  oper; int /*<<< orphan*/  nvoices; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct snd_seq_device {int /*<<< orphan*/  name; } ;
struct snd_emux {int /*<<< orphan*/  card; int /*<<< orphan*/  max_voices; int /*<<< orphan*/  name; struct snd_seq_device* oss_synth; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAMPLE_TYPE_AWE32 ; 
 struct snd_seq_oss_reg* FUNC0 (struct snd_seq_device*) ; 
 int /*<<< orphan*/  SNDRV_SEQ_DEV_ID_OSS ; 
 int /*<<< orphan*/  SYNTH_TYPE_SAMPLE ; 
 int /*<<< orphan*/  oss_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct snd_seq_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct snd_seq_device**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct snd_emux *emu)
{
	struct snd_seq_oss_reg *arg;
	struct snd_seq_device *dev;

	/* using device#1 here for avoiding conflicts with OPL3 */
	if (FUNC2(emu->card, 1, SNDRV_SEQ_DEV_ID_OSS,
			       sizeof(struct snd_seq_oss_reg), &dev) < 0)
		return;

	emu->oss_synth = dev;
	FUNC3(dev->name, emu->name);
	arg = FUNC0(dev);
	arg->type = SYNTH_TYPE_SAMPLE;
	arg->subtype = SAMPLE_TYPE_AWE32;
	arg->nvoices = emu->max_voices;
	arg->oper = oss_callback;
	arg->private_data = emu;

	/* register to OSS synth table */
	FUNC1(emu->card, dev);
}