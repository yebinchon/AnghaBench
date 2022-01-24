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
struct snd_info_entry {struct snd_ca0106* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ca0106 {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct snd_ca0106*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_info_entry *entry, 
				       struct snd_info_buffer *buffer)
{
	struct snd_ca0106 *emu = entry->private_data;
	unsigned long value;
	int i,j;

	FUNC1(buffer, "Registers\n");
	for(i = 0x40; i < 0x80; i++) {
		FUNC1(buffer, "%02X: ",i);
		for (j = 0; j < 4; j++) {
                  value = FUNC0(emu, i, j);
		  FUNC1(buffer, "%08lX ", value);
                }
	        FUNC1(buffer, "\n");
	}
}