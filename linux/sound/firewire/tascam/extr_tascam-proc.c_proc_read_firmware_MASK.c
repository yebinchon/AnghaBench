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
struct snd_tscm {int /*<<< orphan*/  unit; } ;
struct snd_info_entry {struct snd_tscm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  TCODE_READ_QUADLET_REQUEST ; 
 scalar_t__ TSCM_ADDR_BASE ; 
 scalar_t__ TSCM_OFFSET_FIRMWARE_ARM ; 
 scalar_t__ TSCM_OFFSET_FIRMWARE_FPGA ; 
 scalar_t__ TSCM_OFFSET_FIRMWARE_HW ; 
 scalar_t__ TSCM_OFFSET_FIRMWARE_REGISTER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry,
			       struct snd_info_buffer *buffer)
{
	struct snd_tscm *tscm = entry->private_data;
	__be32 data;
	unsigned int reg, fpga, arm, hw;
	int err;

	err = FUNC1(tscm->unit, TCODE_READ_QUADLET_REQUEST,
			TSCM_ADDR_BASE + TSCM_OFFSET_FIRMWARE_REGISTER,
			&data, sizeof(data), 0);
	if (err < 0)
		return;
	reg = FUNC0(data);

	err = FUNC1(tscm->unit, TCODE_READ_QUADLET_REQUEST,
			TSCM_ADDR_BASE + TSCM_OFFSET_FIRMWARE_FPGA,
			&data, sizeof(data), 0);
	if (err < 0)
		return;
	fpga = FUNC0(data);

	err = FUNC1(tscm->unit, TCODE_READ_QUADLET_REQUEST,
			TSCM_ADDR_BASE + TSCM_OFFSET_FIRMWARE_ARM,
			&data, sizeof(data), 0);
	if (err < 0)
		return;
	arm = FUNC0(data);

	err = FUNC1(tscm->unit, TCODE_READ_QUADLET_REQUEST,
			TSCM_ADDR_BASE + TSCM_OFFSET_FIRMWARE_HW,
			&data, sizeof(data), 0);
	if (err < 0)
		return;
	hw = FUNC0(data);

	FUNC2(buffer, "Register: %d (0x%08x)\n", reg & 0xffff, reg);
	FUNC2(buffer, "FPGA:     %d (0x%08x)\n", fpga & 0xffff, fpga);
	FUNC2(buffer, "ARM:      %d (0x%08x)\n", arm & 0xffff, arm);
	FUNC2(buffer, "Hardware: %d (0x%08x)\n", hw >> 16, hw);
}