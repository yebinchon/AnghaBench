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
struct oxygen {struct dg* model_data; } ;
struct dg {int /*<<< orphan*/  cs4245_shadow; } ;
typedef  enum cs4245_shadow_operation { ____Placeholder_cs4245_shadow_operation } cs4245_shadow_operation ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int CS4245_SAVE_TO_SHADOW ; 
 int FUNC1 (struct oxygen*,unsigned char) ; 
 int FUNC2 (struct oxygen*,unsigned char) ; 

int FUNC3(struct oxygen *chip, enum cs4245_shadow_operation op)
{
	struct dg *data = chip->model_data;
	unsigned char addr;
	int ret;

	for (addr = 1; addr < FUNC0(data->cs4245_shadow); addr++) {
		ret = (op == CS4245_SAVE_TO_SHADOW ?
			FUNC1(chip, addr) :
			FUNC2(chip, addr));
		if (ret < 0)
			return ret;
	}
	return 0;
}