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
struct emu10k1x {int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (struct emu10k1x*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_info_entry *entry, 
				       struct snd_info_buffer *buffer)
{
	struct emu10k1x *emu = entry->private_data;
	unsigned long value,value1,value2;
	unsigned long flags;
	int i;

	FUNC2(buffer, "Registers:\n\n");
	for(i = 0; i < 0x20; i+=4) {
		FUNC3(&emu->emu_lock, flags);
		value = FUNC0(emu->port + i);
		FUNC4(&emu->emu_lock, flags);
		FUNC2(buffer, "Register %02X: %08lX\n", i, value);
	}
	FUNC2(buffer, "\nRegisters\n\n");
	for(i = 0; i <= 0x48; i++) {
		value = FUNC1(emu, i, 0);
		if(i < 0x10 || (i >= 0x20 && i < 0x40)) {
			value1 = FUNC1(emu, i, 1);
			value2 = FUNC1(emu, i, 2);
			FUNC2(buffer, "%02X: %08lX %08lX %08lX\n", i, value, value1, value2);
		} else {
			FUNC2(buffer, "%02X: %08lX\n", i, value);
		}
	}
}