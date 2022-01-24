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
typedef  int u16 ;
struct cs5535audio {TYPE_1__* card; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_GPIO_STATUS ; 
 int /*<<< orphan*/  ACC_IRQ_STATUS ; 
#define  BM0_IRQ_STS 131 
#define  BM1_IRQ_STS 130 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
#define  IRQ_STS 129 
#define  WU_IRQ_STS 128 
 int /*<<< orphan*/  FUNC0 (struct cs5535audio*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cs5535audio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cs5535audio*) ; 
 int /*<<< orphan*/  FUNC4 (struct cs5535audio*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	u16 acc_irq_stat;
	unsigned char count;
	struct cs5535audio *cs5535au = dev_id;

	if (cs5535au == NULL)
		return IRQ_NONE;

	acc_irq_stat = FUNC1(cs5535au, ACC_IRQ_STATUS);

	if (!acc_irq_stat)
		return IRQ_NONE;
	for (count = 0; count < 4; count++) {
		if (acc_irq_stat & (1 << count)) {
			switch (count) {
			case IRQ_STS:
				FUNC0(cs5535au, ACC_GPIO_STATUS);
				break;
			case WU_IRQ_STS:
				FUNC0(cs5535au, ACC_GPIO_STATUS);
				break;
			case BM0_IRQ_STS:
				FUNC3(cs5535au);
				break;
			case BM1_IRQ_STS:
				FUNC4(cs5535au);
				break;
			default:
				FUNC2(cs5535au->card->dev,
					"Unexpected irq src: 0x%x\n",
					acc_irq_stat);
				break;
			}
		}
	}
	return IRQ_HANDLED;
}