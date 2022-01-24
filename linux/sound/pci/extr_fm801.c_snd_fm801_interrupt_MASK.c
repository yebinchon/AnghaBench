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
struct fm801 {int ply_buf; unsigned int ply_pos; unsigned int ply_count; unsigned int ply_size; int cap_buf; unsigned int cap_pos; unsigned int cap_count; unsigned int cap_size; TYPE_1__* rmidi; scalar_t__ capture_substream; int /*<<< orphan*/  reg_lock; scalar_t__ cap_buffer; scalar_t__ pcm; scalar_t__ playback_substream; scalar_t__ ply_buffer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_BUF1 ; 
 int /*<<< orphan*/  CAP_BUF2 ; 
 unsigned short FM801_IRQ_CAPTURE ; 
 unsigned short FM801_IRQ_MPU ; 
 unsigned short FM801_IRQ_PLAYBACK ; 
 unsigned short FM801_IRQ_VOLUME ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  PLY_BUF1 ; 
 int /*<<< orphan*/  PLY_BUF2 ; 
 unsigned short FUNC0 (struct fm801*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm801*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fm801*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct fm801 *chip = dev_id;
	unsigned short status;
	unsigned int tmp;

	status = FUNC0(chip, IRQ_STATUS);
	status &= FM801_IRQ_PLAYBACK|FM801_IRQ_CAPTURE|FM801_IRQ_MPU|FM801_IRQ_VOLUME;
	if (! status)
		return IRQ_NONE;
	/* ack first */
	FUNC2(chip, IRQ_STATUS, status);
	if (chip->pcm && (status & FM801_IRQ_PLAYBACK) && chip->playback_substream) {
		FUNC5(&chip->reg_lock);
		chip->ply_buf++;
		chip->ply_pos += chip->ply_count;
		chip->ply_pos %= chip->ply_size;
		tmp = chip->ply_pos + chip->ply_count;
		tmp %= chip->ply_size;
		if (chip->ply_buf & 1)
			FUNC1(chip, PLY_BUF1, chip->ply_buffer + tmp);
		else
			FUNC1(chip, PLY_BUF2, chip->ply_buffer + tmp);
		FUNC6(&chip->reg_lock);
		FUNC4(chip->playback_substream);
	}
	if (chip->pcm && (status & FM801_IRQ_CAPTURE) && chip->capture_substream) {
		FUNC5(&chip->reg_lock);
		chip->cap_buf++;
		chip->cap_pos += chip->cap_count;
		chip->cap_pos %= chip->cap_size;
		tmp = chip->cap_pos + chip->cap_count;
		tmp %= chip->cap_size;
		if (chip->cap_buf & 1)
			FUNC1(chip, CAP_BUF1, chip->cap_buffer + tmp);
		else
			FUNC1(chip, CAP_BUF2, chip->cap_buffer + tmp);
		FUNC6(&chip->reg_lock);
		FUNC4(chip->capture_substream);
	}
	if (chip->rmidi && (status & FM801_IRQ_MPU))
		FUNC3(irq, chip->rmidi->private_data);
	if (status & FM801_IRQ_VOLUME) {
		/* TODO */
	}

	return IRQ_HANDLED;
}