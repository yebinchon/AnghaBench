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
typedef  scalar_t__ u16 ;
struct es1968 {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDR0_DATA_PORT ; 
 scalar_t__ FUNC0 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct es1968 *chip, u16 data)
{
	int i;
	for (i = 0; i < 1000; i++) {
		if (FUNC0(chip, IDR0_DATA_PORT) == data)
			return;
		FUNC1(chip, IDR0_DATA_PORT, data);
	}
	FUNC2(chip->card->dev, "APU register set probably failed (Timeout)!\n");
}