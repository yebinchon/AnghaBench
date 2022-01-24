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
struct fm801 {int ply_ctrl; int ply_pos; int ply_count; size_t ply_size; int /*<<< orphan*/  reg_lock; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int FM801_IRQ_PLAYBACK ; 
 int FM801_START ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  PLY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct fm801*,int /*<<< orphan*/ ) ; 
 struct fm801* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC5(struct snd_pcm_substream *substream)
{
	struct fm801 *chip = FUNC2(substream);
	size_t ptr;

	if (!(chip->ply_ctrl & FM801_START))
		return 0;
	FUNC3(&chip->reg_lock);
	ptr = chip->ply_pos + (chip->ply_count - 1) - FUNC1(chip, PLY_COUNT);
	if (FUNC1(chip, IRQ_STATUS) & FM801_IRQ_PLAYBACK) {
		ptr += chip->ply_count;
		ptr %= chip->ply_size;
	}
	FUNC4(&chip->reg_lock);
	return FUNC0(substream->runtime, ptr);
}