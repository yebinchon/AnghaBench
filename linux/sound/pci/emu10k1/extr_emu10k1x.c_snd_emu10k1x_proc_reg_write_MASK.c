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
struct snd_info_entry {struct emu10k1x* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct emu10k1x {int dummy; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct emu10k1x*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,int) ; 
 int FUNC2 (char*,char*,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry, 
					struct snd_info_buffer *buffer)
{
	struct emu10k1x *emu = entry->private_data;
	char line[64];
	unsigned int reg, channel_id , val;

	while (!FUNC1(buffer, line, sizeof(line))) {
		if (FUNC2(line, "%x %x %x", &reg, &channel_id, &val) != 3)
			continue;

		if (reg < 0x49 && val <= 0xffffffff && channel_id <= 2)
			FUNC0(emu, reg, channel_id, val);
	}
}