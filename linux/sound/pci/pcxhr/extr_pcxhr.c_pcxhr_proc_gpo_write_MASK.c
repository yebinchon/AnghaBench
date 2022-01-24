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
struct snd_pcxhr {struct pcxhr_mgr* mgr; } ;
struct snd_info_entry {struct snd_pcxhr* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcxhr_mgr {int dsp_loaded; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int PCXHR_FIRMWARE_DSP_MAIN_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct pcxhr_mgr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,int) ; 
 int FUNC2 (char*,char*,int*) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry,
				 struct snd_info_buffer *buffer)
{
	struct snd_pcxhr *chip = entry->private_data;
	struct pcxhr_mgr *mgr = chip->mgr;
	char line[64];
	int value;
	/* commands available when embedded DSP is running */
	if (!(mgr->dsp_loaded & (1 << PCXHR_FIRMWARE_DSP_MAIN_INDEX)))
		return;
	while (!FUNC1(buffer, line, sizeof(line))) {
		if (FUNC2(line, "GPO: 0x%x", &value) != 1)
			continue;
		FUNC0(mgr, value);	/* GP0 */
	}
}