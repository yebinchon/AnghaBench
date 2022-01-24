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
struct snd_ymfpci {int dummy; } ;
struct snd_info_entry {struct snd_ymfpci* private_data; } ;
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int YDSXGR_WORKBASE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*,int) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry, 
				 struct snd_info_buffer *buffer)
{
	struct snd_ymfpci *chip = entry->private_data;
	int i;
	
	FUNC0(buffer, "YMFPCI\n\n");
	for (i = 0; i <= YDSXGR_WORKBASE; i += 4)
		FUNC0(buffer, "%04x: %04x\n", i, FUNC1(chip, i));
}