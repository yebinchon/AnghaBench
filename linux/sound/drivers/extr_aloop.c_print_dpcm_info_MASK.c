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
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {char const* expires; } ;
struct loopback_pcm {char const* pcm_buffer_size; char const* buf_pos; char const* silent_size; char const* pcm_period_size; char const* pcm_bps; char const* pcm_salign; char const* pcm_rate_shift; char const* period_update_pending; char const* irq_pos; char const* period_size_frac; TYPE_1__ timer; int /*<<< orphan*/  last_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct snd_info_buffer *buffer,
			    struct loopback_pcm *dpcm,
			    const char *id)
{
	FUNC0(buffer, "  %s\n", id);
	if (dpcm == NULL) {
		FUNC0(buffer, "    inactive\n");
		return;
	}
	FUNC0(buffer, "    buffer_size:\t%u\n", dpcm->pcm_buffer_size);
	FUNC0(buffer, "    buffer_pos:\t\t%u\n", dpcm->buf_pos);
	FUNC0(buffer, "    silent_size:\t%u\n", dpcm->silent_size);
	FUNC0(buffer, "    period_size:\t%u\n", dpcm->pcm_period_size);
	FUNC0(buffer, "    bytes_per_sec:\t%u\n", dpcm->pcm_bps);
	FUNC0(buffer, "    sample_align:\t%u\n", dpcm->pcm_salign);
	FUNC0(buffer, "    rate_shift:\t\t%u\n", dpcm->pcm_rate_shift);
	FUNC0(buffer, "    update_pending:\t%u\n",
						dpcm->period_update_pending);
	FUNC0(buffer, "    irq_pos:\t\t%u\n", dpcm->irq_pos);
	FUNC0(buffer, "    period_frac:\t%u\n", dpcm->period_size_frac);
	FUNC0(buffer, "    last_jiffies:\t%lu (%lu)\n",
					dpcm->last_jiffies, jiffies);
	FUNC0(buffer, "    timer_expires:\t%lu\n", dpcm->timer.expires);
}