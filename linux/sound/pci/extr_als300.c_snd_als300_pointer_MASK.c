#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned short u16 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_als300_substream_data {scalar_t__ period_flipflop; int /*<<< orphan*/  block_counter_register; } ;
struct snd_als300 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {struct snd_als300_substream_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned short FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_als300* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(struct snd_pcm_substream *substream)
{
	u16 current_ptr;
	struct snd_als300 *chip = FUNC4(substream);
	struct snd_als300_substream_data *data;
	unsigned short period_bytes;

	data = substream->runtime->private_data;
	period_bytes = FUNC3(substream);
	
	FUNC5(&chip->reg_lock);
	current_ptr = (u16) FUNC2(chip->port,
					data->block_counter_register) + 4;
	FUNC6(&chip->reg_lock);
	if (current_ptr > period_bytes)
		current_ptr = 0;
	else
		current_ptr = period_bytes - current_ptr;

	if (data->period_flipflop == 0)
		current_ptr += period_bytes;
	FUNC1("Pointer (bytes): %d\n", current_ptr);
	return FUNC0(substream->runtime, current_ptr);
}