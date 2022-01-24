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
struct firmware {int dummy; } ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 

__attribute__((used)) static void FUNC2(const struct firmware *fw_entry,
			  struct echoaudio *chip)
{
#ifdef CONFIG_PM_SLEEP
	dev_dbg(chip->card->dev, "firmware not released (kept in cache)\n");
#else
	FUNC1(fw_entry);
#endif
}