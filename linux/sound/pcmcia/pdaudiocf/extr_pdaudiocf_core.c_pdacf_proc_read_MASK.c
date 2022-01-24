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
typedef  int /*<<< orphan*/  u16 ;
struct snd_pdacf {int dummy; } ;
struct snd_info_entry {struct snd_pdacf* private_data; } ;
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PDAUDIOCF_REG_SCR ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pdacf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry * entry,
                            struct snd_info_buffer *buffer)
{
	struct snd_pdacf *chip = entry->private_data;
	u16 tmp;

	FUNC2(buffer, "PDAudioCF\n\n");
	tmp = FUNC1(chip, PDAUDIOCF_REG_SCR);
	FUNC2(buffer, "FPGA revision      : 0x%x\n", FUNC0(tmp));
	                                   
}