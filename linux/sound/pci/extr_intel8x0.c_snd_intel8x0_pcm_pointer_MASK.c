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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct intel8x0 {int /*<<< orphan*/  reg_lock; scalar_t__ inside_vm; } ;
struct ichdev {unsigned int position; size_t last_pos; size_t pos_shift; size_t fragsize1; size_t size; scalar_t__ roff_picb; scalar_t__ reg_offset; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 scalar_t__ ICH_REG_OFF_CIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct ichdev* FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct intel8x0*,scalar_t__) ; 
 size_t FUNC3 (struct intel8x0*,scalar_t__) ; 
 struct intel8x0* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC8(struct snd_pcm_substream *substream)
{
	struct intel8x0 *chip = FUNC4(substream);
	struct ichdev *ichdev = FUNC1(substream);
	size_t ptr1, ptr;
	int civ, timeout = 10;
	unsigned int position;

	FUNC5(&chip->reg_lock);
	do {
		civ = FUNC2(chip, ichdev->reg_offset + ICH_REG_OFF_CIV);
		ptr1 = FUNC3(chip, ichdev->reg_offset + ichdev->roff_picb);
		position = ichdev->position;
		if (ptr1 == 0) {
			FUNC7(10);
			continue;
		}
		if (civ != FUNC2(chip, ichdev->reg_offset + ICH_REG_OFF_CIV))
			continue;

		/* IO read operation is very expensive inside virtual machine
		 * as it is emulated. The probability that subsequent PICB read
		 * will return different result is high enough to loop till
		 * timeout here.
		 * Same CIV is strict enough condition to be sure that PICB
		 * is valid inside VM on emulated card. */
		if (chip->inside_vm)
			break;
		if (ptr1 == FUNC3(chip, ichdev->reg_offset + ichdev->roff_picb))
			break;
	} while (timeout--);
	ptr = ichdev->last_pos;
	if (ptr1 != 0) {
		ptr1 <<= ichdev->pos_shift;
		ptr = ichdev->fragsize1 - ptr1;
		ptr += position;
		if (ptr < ichdev->last_pos) {
			unsigned int pos_base, last_base;
			pos_base = position / ichdev->fragsize1;
			last_base = ichdev->last_pos / ichdev->fragsize1;
			/* another sanity check; ptr1 can go back to full
			 * before the base position is updated
			 */
			if (pos_base == last_base)
				ptr = ichdev->last_pos;
		}
	}
	ichdev->last_pos = ptr;
	FUNC6(&chip->reg_lock);
	if (ptr >= ichdev->size)
		return 0;
	return FUNC0(substream->runtime, ptr);
}