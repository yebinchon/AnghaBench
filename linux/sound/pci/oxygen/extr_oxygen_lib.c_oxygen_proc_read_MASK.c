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
struct snd_info_entry {struct oxygen* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dump_registers ) (struct oxygen*,struct snd_info_buffer*) ;} ;
struct oxygen {TYPE_1__ model; int /*<<< orphan*/  mutex; scalar_t__ has_ac97_1; scalar_t__ has_ac97_0; } ;

/* Variables and functions */
 int OXYGEN_IO_SIZE ; 
#define  OXYGEN_PACKAGE_ID_8786 130 
#define  OXYGEN_PACKAGE_ID_8787 129 
#define  OXYGEN_PACKAGE_ID_8788 128 
 int OXYGEN_PACKAGE_ID_MASK ; 
 int OXYGEN_REVISION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct oxygen*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_info_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct oxygen*,struct snd_info_buffer*) ; 

__attribute__((used)) static void FUNC6(struct snd_info_entry *entry,
			     struct snd_info_buffer *buffer)
{
	struct oxygen *chip = entry->private_data;
	int i, j;

	switch (FUNC2(chip, OXYGEN_REVISION) & OXYGEN_PACKAGE_ID_MASK) {
	case OXYGEN_PACKAGE_ID_8786: i = '6'; break;
	case OXYGEN_PACKAGE_ID_8787: i = '7'; break;
	case OXYGEN_PACKAGE_ID_8788: i = '8'; break;
	default:                     i = '?'; break;
	}
	FUNC4(buffer, "CMI878%c:\n", i);
	for (i = 0; i < OXYGEN_IO_SIZE; i += 0x10) {
		FUNC4(buffer, "%02x:", i);
		for (j = 0; j < 0x10; ++j)
			FUNC4(buffer, " %02x", FUNC2(chip, i + j));
		FUNC4(buffer, "\n");
	}
	if (FUNC0(&chip->mutex) < 0)
		return;
	if (chip->has_ac97_0) {
		FUNC4(buffer, "\nAC97:\n");
		for (i = 0; i < 0x80; i += 0x10) {
			FUNC4(buffer, "%02x:", i);
			for (j = 0; j < 0x10; j += 2)
				FUNC4(buffer, " %04x",
					    FUNC3(chip, 0, i + j));
			FUNC4(buffer, "\n");
		}
	}
	if (chip->has_ac97_1) {
		FUNC4(buffer, "\nAC97 2:\n");
		for (i = 0; i < 0x80; i += 0x10) {
			FUNC4(buffer, "%02x:", i);
			for (j = 0; j < 0x10; j += 2)
				FUNC4(buffer, " %04x",
					    FUNC3(chip, 1, i + j));
			FUNC4(buffer, "\n");
		}
	}
	FUNC1(&chip->mutex);
	if (chip->model.dump_registers)
		chip->model.dump_registers(chip, buffer);
}