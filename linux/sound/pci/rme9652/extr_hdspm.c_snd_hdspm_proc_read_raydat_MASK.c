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
struct snd_info_entry {struct hdspm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdspm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSPM_RD_STATUS_1 ; 
 int /*<<< orphan*/  HDSPM_RD_STATUS_2 ; 
 int /*<<< orphan*/  HDSPM_RD_STATUS_3 ; 
 int /*<<< orphan*/  FUNC0 (struct hdspm*) ; 
 unsigned int FUNC1 (struct hdspm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hdspm*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,char*,...) ; 
 int /*<<< orphan*/ * texts_freq ; 

__attribute__((used)) static void
FUNC4(struct snd_info_entry *entry,
			 struct snd_info_buffer *buffer)
{
	struct hdspm *hdspm = entry->private_data;
	unsigned int status1, status2, status3, i;
	unsigned int lock, sync;

	status1 = FUNC1(hdspm, HDSPM_RD_STATUS_1); /* s1 */
	status2 = FUNC1(hdspm, HDSPM_RD_STATUS_2); /* freq */
	status3 = FUNC1(hdspm, HDSPM_RD_STATUS_3); /* s2 */

	FUNC3(buffer, "STATUS1: 0x%08x\n", status1);
	FUNC3(buffer, "STATUS2: 0x%08x\n", status2);
	FUNC3(buffer, "STATUS3: 0x%08x\n", status3);


	FUNC3(buffer, "\n*** CLOCK MODE\n\n");

	FUNC3(buffer, "Clock mode      : %s\n",
		(FUNC2(hdspm) == 0) ? "master" : "slave");
	FUNC3(buffer, "System frequency: %d Hz\n",
		FUNC0(hdspm));

	FUNC3(buffer, "\n*** INPUT STATUS\n\n");

	lock = 0x1;
	sync = 0x100;

	for (i = 0; i < 8; i++) {
		FUNC3(buffer, "s1_input %d: Lock %d, Sync %d, Freq %s\n",
				i,
				(status1 & lock) ? 1 : 0,
				(status1 & sync) ? 1 : 0,
				texts_freq[(status2 >> (i * 4)) & 0xF]);

		lock = lock<<1;
		sync = sync<<1;
	}

	FUNC3(buffer, "WC input: Lock %d, Sync %d, Freq %s\n",
			(status1 & 0x1000000) ? 1 : 0,
			(status1 & 0x2000000) ? 1 : 0,
			texts_freq[(status1 >> 16) & 0xF]);

	FUNC3(buffer, "TCO input: Lock %d, Sync %d, Freq %s\n",
			(status1 & 0x4000000) ? 1 : 0,
			(status1 & 0x8000000) ? 1 : 0,
			texts_freq[(status1 >> 20) & 0xF]);

	FUNC3(buffer, "SYNC IN: Lock %d, Sync %d, Freq %s\n",
			(status3 & 0x400) ? 1 : 0,
			(status3 & 0x800) ? 1 : 0,
			texts_freq[(status2 >> 12) & 0xF]);

}