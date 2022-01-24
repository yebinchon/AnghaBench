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
typedef  int u32 ;
struct spdif_in_dev {scalar_t__ io_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SPDIF_IN_IRQ ; 
 int SPDIF_IRQ_EMPTYFIFOREAD ; 
 int SPDIF_IRQ_FIFOFULL ; 
 int SPDIF_IRQ_FIFOWRITE ; 
 int SPDIF_IRQ_OUTOFRANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct spdif_in_dev *host = (struct spdif_in_dev *)arg;

	u32 irq_status = FUNC1(host->io_base + SPDIF_IN_IRQ);

	if (!irq_status)
		return IRQ_NONE;

	if (irq_status & SPDIF_IRQ_FIFOWRITE)
		FUNC0(host->dev, "spdif in: fifo write error");
	if (irq_status & SPDIF_IRQ_EMPTYFIFOREAD)
		FUNC0(host->dev, "spdif in: empty fifo read error");
	if (irq_status & SPDIF_IRQ_FIFOFULL)
		FUNC0(host->dev, "spdif in: fifo full error");
	if (irq_status & SPDIF_IRQ_OUTOFRANGE)
		FUNC0(host->dev, "spdif in: out of range error");

	FUNC2(0, host->io_base + SPDIF_IN_IRQ);

	return IRQ_HANDLED;
}