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
typedef  int u32 ;
struct snd_info_entry {struct snd_ca0106* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ca0106 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAMPLE_RATE_TRACKER_STATUS ; 
 int /*<<< orphan*/  SPDIF_INPUT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,int) ; 
 int FUNC1 (struct snd_ca0106*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry, 
				       struct snd_info_buffer *buffer)
{
	struct snd_ca0106 *emu = entry->private_data;
	u32 value;

        value = FUNC1(emu, SAMPLE_RATE_TRACKER_STATUS, 0);
	FUNC2(buffer, "Status: %s, %s, %s\n",
		  (value & 0x100000) ? "Rate Locked" : "Not Rate Locked",
		  (value & 0x200000) ? "SPDIF Locked" : "No SPDIF Lock",
		  (value & 0x400000) ? "Audio Valid" : "No valid audio" );
	FUNC2(buffer, "Estimated sample rate: %u\n", 
		  ((value & 0xfffff) * 48000) / 0x8000 );
	if (value & 0x200000) {
		FUNC2(buffer, "IEC958/SPDIF input status:\n");
        	value = FUNC1(emu, SPDIF_INPUT_STATUS, 0);
		FUNC0(buffer, value);
	}

	FUNC2(buffer, "\n");
}