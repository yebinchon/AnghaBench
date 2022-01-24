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
struct snd_info_entry {struct intel8x0m* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct intel8x0m {scalar_t__ device_type; } ;

/* Variables and functions */
 scalar_t__ DEVICE_ALI ; 
 int /*<<< orphan*/  GLOB_CNT ; 
 int /*<<< orphan*/  GLOB_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ICH_PCR ; 
 unsigned int ICH_SCR ; 
 unsigned int ICH_TCR ; 
 unsigned int FUNC1 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry * entry,
				   struct snd_info_buffer *buffer)
{
	struct intel8x0m *chip = entry->private_data;
	unsigned int tmp;

	FUNC2(buffer, "Intel8x0m\n\n");
	if (chip->device_type == DEVICE_ALI)
		return;
	tmp = FUNC1(chip, FUNC0(GLOB_STA));
	FUNC2(buffer, "Global control        : 0x%08x\n",
		    FUNC1(chip, FUNC0(GLOB_CNT)));
	FUNC2(buffer, "Global status         : 0x%08x\n", tmp);
	FUNC2(buffer, "AC'97 codecs ready    :%s%s%s%s\n",
			tmp & ICH_PCR ? " primary" : "",
			tmp & ICH_SCR ? " secondary" : "",
			tmp & ICH_TCR ? " tertiary" : "",
			(tmp & (ICH_PCR | ICH_SCR | ICH_TCR)) == 0 ? " none" : "");
}