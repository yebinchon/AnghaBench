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
struct snd_pcm_substream {int dummy; } ;
struct intel8x0 {int /*<<< orphan*/ * ichd; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 size_t ALID_AC97SPDIFOUT ; 
 int /*<<< orphan*/  ALI_INTERFACECR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ICH_ALI_IF_AC97SP ; 
 unsigned int FUNC1 (struct intel8x0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 struct intel8x0* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct intel8x0 *chip = FUNC4(substream);
	unsigned int val;

	FUNC5(&chip->reg_lock);
	val = FUNC1(chip, FUNC0(ALI_INTERFACECR));
	val |= ICH_ALI_IF_AC97SP;
	FUNC2(chip, FUNC0(ALI_INTERFACECR), val);
	/* also needs to set ALI_SC_CODEC_SPDF correctly */
	FUNC6(&chip->reg_lock);

	return FUNC3(substream, &chip->ichd[ALID_AC97SPDIFOUT]);
}