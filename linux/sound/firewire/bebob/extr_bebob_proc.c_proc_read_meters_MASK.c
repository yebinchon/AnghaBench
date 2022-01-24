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
typedef  int /*<<< orphan*/  u32 ;
struct snd_info_entry {struct snd_bebob* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_bebob_meter_spec {int num; scalar_t__ (* get ) (struct snd_bebob*,int /*<<< orphan*/ *,unsigned int) ;int /*<<< orphan*/ * labels; } ;
struct snd_bebob {TYPE_1__* spec; } ;
struct TYPE_2__ {struct snd_bebob_meter_spec* meter; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct snd_bebob*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC5(struct snd_info_entry *entry,
		 struct snd_info_buffer *buffer)
{
	struct snd_bebob *bebob = entry->private_data;
	const struct snd_bebob_meter_spec *spec = bebob->spec->meter;
	u32 *buf;
	unsigned int i, c, channels, size;

	if (spec == NULL)
		return;

	channels = spec->num * 2;
	size = channels * sizeof(u32);
	buf = FUNC1(size, GFP_KERNEL);
	if (buf == NULL)
		return;

	if (spec->get(bebob, buf, size) < 0)
		goto end;

	for (i = 0, c = 1; i < channels; i++) {
		FUNC2(buffer, "%s %d:\t%d\n",
			    spec->labels[i / 2], c++, buf[i]);
		if ((i + 1 < channels - 1) &&
		    (FUNC3(spec->labels[i / 2],
			    spec->labels[(i + 1) / 2]) != 0))
			c = 1;
	}
end:
	FUNC0(buf);
}