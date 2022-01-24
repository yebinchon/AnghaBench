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
 int /*<<< orphan*/  CTL ; 
 unsigned int LOLA_DSD_CTL_SRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned int FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct lola *chip, struct lola_stream *str)
{
	unsigned long end_time = jiffies + FUNC2(200);
	while (FUNC4(jiffies, end_time)) {
		unsigned int val;
		val = FUNC1(chip, str->dsd, CTL);
		if (!(val & LOLA_DSD_CTL_SRST))
			return;
		FUNC3(1);
	}
	FUNC0(chip->card->dev, "SRST not clear (stream %d)\n", str->dsd);
}