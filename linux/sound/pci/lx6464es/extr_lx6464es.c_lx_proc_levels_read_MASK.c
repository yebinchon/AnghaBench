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
typedef  int /*<<< orphan*/  u32 ;
struct snd_info_entry {struct lx6464es* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct lx6464es {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lx6464es*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry,
				struct snd_info_buffer *buffer)
{
	u32 levels[64];
	int err;
	int i, j;
	struct lx6464es *chip = entry->private_data;

	FUNC1(buffer, "capture levels:\n");
	err = FUNC0(chip, 1, 64, levels);
	if (err < 0)
		return;

	for (i = 0; i != 8; ++i) {
		for (j = 0; j != 8; ++j)
			FUNC1(buffer, "%08x ", levels[i*8+j]);
		FUNC1(buffer, "\n");
	}

	FUNC1(buffer, "\nplayback levels:\n");

	err = FUNC0(chip, 0, 64, levels);
	if (err < 0)
		return;

	for (i = 0; i != 8; ++i) {
		for (j = 0; j != 8; ++j)
			FUNC1(buffer, "%08x ", levels[i*8+j]);
		FUNC1(buffer, "\n");
	}

	FUNC1(buffer, "\n");
}