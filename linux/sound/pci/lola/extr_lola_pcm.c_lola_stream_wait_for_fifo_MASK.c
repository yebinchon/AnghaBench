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
struct lola_stream {int /*<<< orphan*/  dsd; } ;
struct lola {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int LOLA_DSD_STS_FIFORDY ; 
 int /*<<< orphan*/  STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned int FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct lola *chip,
				     struct lola_stream *str,
				     bool ready)
{
	unsigned int val = ready ? LOLA_DSD_STS_FIFORDY : 0;
	unsigned long end_time = jiffies + FUNC2(200);
	while (FUNC4(jiffies, end_time)) {
		unsigned int reg = FUNC1(chip, str->dsd, STS);
		if ((reg & LOLA_DSD_STS_FIFORDY) == val)
			return 0;
		FUNC3(1);
	}
	FUNC0(chip->card->dev, "FIFO not ready (stream %d)\n", str->dsd);
	return -EIO;
}