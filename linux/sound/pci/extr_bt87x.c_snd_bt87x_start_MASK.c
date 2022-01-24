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
struct TYPE_2__ {int addr; } ;
struct snd_bt87x {int reg_control; int line_bytes; int lines; int interrupt_mask; int /*<<< orphan*/  reg_lock; TYPE_1__ dma_risc; scalar_t__ current_line; } ;

/* Variables and functions */
 int CTL_ACAP_EN ; 
 int CTL_FIFO_ENABLE ; 
 int CTL_RISC_ENABLE ; 
 int /*<<< orphan*/  REG_GPIO_DMA_CTL ; 
 int /*<<< orphan*/  REG_INT_MASK ; 
 int /*<<< orphan*/  REG_PACKET_LEN ; 
 int /*<<< orphan*/  REG_RISC_STRT_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct snd_bt87x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_bt87x *chip)
{
	FUNC1(&chip->reg_lock);
	chip->current_line = 0;
	chip->reg_control |= CTL_FIFO_ENABLE | CTL_RISC_ENABLE | CTL_ACAP_EN;
	FUNC0(chip, REG_RISC_STRT_ADD, chip->dma_risc.addr);
	FUNC0(chip, REG_PACKET_LEN,
			 chip->line_bytes | (chip->lines << 16));
	FUNC0(chip, REG_INT_MASK, chip->interrupt_mask);
	FUNC0(chip, REG_GPIO_DMA_CTL, chip->reg_control);
	FUNC2(&chip->reg_lock);
	return 0;
}