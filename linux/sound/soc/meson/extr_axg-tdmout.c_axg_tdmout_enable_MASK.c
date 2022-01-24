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
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TDMOUT_CTRL0 ; 
 int TDMOUT_CTRL0_ENABLE ; 
 int TDMOUT_CTRL0_RST_IN ; 
 int TDMOUT_CTRL0_RST_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct regmap *map)
{
	/* Apply both reset */
	FUNC0(map, TDMOUT_CTRL0,
			   TDMOUT_CTRL0_RST_OUT | TDMOUT_CTRL0_RST_IN, 0);

	/* Clear out reset before in reset */
	FUNC0(map, TDMOUT_CTRL0,
			   TDMOUT_CTRL0_RST_OUT, TDMOUT_CTRL0_RST_OUT);
	FUNC0(map, TDMOUT_CTRL0,
			   TDMOUT_CTRL0_RST_IN,  TDMOUT_CTRL0_RST_IN);

	/* Actually enable tdmout */
	FUNC0(map, TDMOUT_CTRL0,
			   TDMOUT_CTRL0_ENABLE, TDMOUT_CTRL0_ENABLE);
}