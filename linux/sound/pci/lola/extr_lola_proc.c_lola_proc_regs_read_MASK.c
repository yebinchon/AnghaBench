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
struct snd_info_entry {struct lola* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct lola {TYPE_1__* bar; } ;
struct TYPE_2__ {scalar_t__ remap_addr; } ;

/* Variables and functions */
 size_t BAR0 ; 
 size_t BAR1 ; 
 int /*<<< orphan*/  BDPL ; 
 int /*<<< orphan*/  BDPU ; 
 int /*<<< orphan*/  CTL ; 
 int /*<<< orphan*/  LPIB ; 
 int /*<<< orphan*/  LVI ; 
 int /*<<< orphan*/  STS ; 
 int /*<<< orphan*/  FUNC0 (struct lola*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry,
				struct snd_info_buffer *buffer)
{
	struct lola *chip = entry->private_data;
	int i;

	for (i = 0; i < 0x40; i += 4) {
		FUNC2(buffer, "BAR0 %02x: %08x\n", i,
			    FUNC1(chip->bar[BAR0].remap_addr + i));
	}
	FUNC2(buffer, "\n");
	for (i = 0; i < 0x30; i += 4) {
		FUNC2(buffer, "BAR1 %02x: %08x\n", i,
			    FUNC1(chip->bar[BAR1].remap_addr + i));
	}
	FUNC2(buffer, "\n");
	for (i = 0x80; i < 0xa0; i += 4) {
		FUNC2(buffer, "BAR1 %02x: %08x\n", i,
			    FUNC1(chip->bar[BAR1].remap_addr + i));
	}
	FUNC2(buffer, "\n");
	for (i = 0; i < 32; i++) {
		FUNC2(buffer, "DSD %02x STS  %08x\n", i,
			    FUNC0(chip, i, STS));
		FUNC2(buffer, "DSD %02x LPIB %08x\n", i,
			    FUNC0(chip, i, LPIB));
		FUNC2(buffer, "DSD %02x CTL  %08x\n", i,
			    FUNC0(chip, i, CTL));
		FUNC2(buffer, "DSD %02x LVIL %08x\n", i,
			    FUNC0(chip, i, LVI));
		FUNC2(buffer, "DSD %02x BDPL %08x\n", i,
			    FUNC0(chip, i, BDPL));
		FUNC2(buffer, "DSD %02x BDPU %08x\n", i,
			    FUNC0(chip, i, BDPU));
	}
}