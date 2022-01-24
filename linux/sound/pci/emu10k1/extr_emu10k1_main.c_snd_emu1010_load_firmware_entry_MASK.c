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
struct snd_emu10k1 {int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;
struct firmware {int size; int* data; } ;

/* Variables and functions */
 scalar_t__ A_IOCFG ; 
 int EIO ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct snd_emu10k1 *emu,
				     const struct firmware *fw_entry)
{
	int n, i;
	int reg;
	int value;
	unsigned int write_post;
	unsigned long flags;

	if (!fw_entry)
		return -EIO;

	/* The FPGA is a Xilinx Spartan IIE XC2S50E */
	/* GPIO7 -> FPGA PGMN
	 * GPIO6 -> FPGA CCLK
	 * GPIO5 -> FPGA DIN
	 * FPGA CONFIG OFF -> FPGA PGMN
	 */
	FUNC2(&emu->emu_lock, flags);
	FUNC1(0x00, emu->port + A_IOCFG); /* Set PGMN low for 1uS. */
	write_post = FUNC0(emu->port + A_IOCFG);
	FUNC4(100);
	FUNC1(0x80, emu->port + A_IOCFG); /* Leave bit 7 set during netlist setup. */
	write_post = FUNC0(emu->port + A_IOCFG);
	FUNC4(100); /* Allow FPGA memory to clean */
	for (n = 0; n < fw_entry->size; n++) {
		value = fw_entry->data[n];
		for (i = 0; i < 8; i++) {
			reg = 0x80;
			if (value & 0x1)
				reg = reg | 0x20;
			value = value >> 1;
			FUNC1(reg, emu->port + A_IOCFG);
			write_post = FUNC0(emu->port + A_IOCFG);
			FUNC1(reg | 0x40, emu->port + A_IOCFG);
			write_post = FUNC0(emu->port + A_IOCFG);
		}
	}
	/* After programming, set GPIO bit 4 high again. */
	FUNC1(0x10, emu->port + A_IOCFG);
	write_post = FUNC0(emu->port + A_IOCFG);
	FUNC3(&emu->emu_lock, flags);

	return 0;
}