#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int /*<<< orphan*/  rate; } ;
struct TYPE_6__ {int hw_buffer_size; int /*<<< orphan*/  sw_buffer_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int shift; TYPE_3__ pcm_rec; TYPE_2__ hw_buf; } ;
struct snd_cs46xx {TYPE_1__ capt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA1_CBA ; 
 int CS46XX_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_cs46xx* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_cs46xx *chip = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC1(chip, BA1_CBA, chip->capt.hw_buf.addr);
	chip->capt.shift = 2;
	FUNC0(&chip->capt.pcm_rec, 0, sizeof(chip->capt.pcm_rec));
	chip->capt.pcm_rec.sw_buffer_size = FUNC3(substream);
	chip->capt.pcm_rec.hw_buffer_size = runtime->period_size * CS46XX_FRAGS << 2;
	FUNC2(chip, runtime->rate);

	return 0;
}