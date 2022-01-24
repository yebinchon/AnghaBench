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
struct snd_info_entry {struct snd_bebob* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_bebob_rate_spec {scalar_t__ (* get ) (struct snd_bebob*,unsigned int*) ;} ;
struct snd_bebob_clock_spec {int dummy; } ;
struct snd_bebob {int /*<<< orphan*/  sync_input_plug; TYPE_1__* spec; } ;
typedef  enum snd_bebob_clock_type { ____Placeholder_snd_bebob_clock_type } snd_bebob_clock_type ;
struct TYPE_2__ {struct snd_bebob_clock_spec* clock; struct snd_bebob_rate_spec* rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_bebob*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 
 scalar_t__ FUNC2 (struct snd_bebob*,unsigned int*) ; 

__attribute__((used)) static void
FUNC3(struct snd_info_entry *entry,
		struct snd_info_buffer *buffer)
{
	static const char *const clk_labels[] = {
		"Internal",
		"External",
		"SYT-Match",
	};
	struct snd_bebob *bebob = entry->private_data;
	const struct snd_bebob_rate_spec *rate_spec = bebob->spec->rate;
	const struct snd_bebob_clock_spec *clk_spec = bebob->spec->clock;
	enum snd_bebob_clock_type src;
	unsigned int rate;

	if (rate_spec->get(bebob, &rate) >= 0)
		FUNC1(buffer, "Sampling rate: %d\n", rate);

	if (FUNC0(bebob, &src) >= 0) {
		if (clk_spec)
			FUNC1(buffer, "Clock Source: %s\n",
				    clk_labels[src]);
		else
			FUNC1(buffer, "Clock Source: %s (MSU-dest: %d)\n",
				    clk_labels[src], bebob->sync_input_plug);
	}
}