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
 int /*<<< orphan*/  SPDIFIN_CTRL2 ; 
 int /*<<< orphan*/  SPDIFIN_THRES_PER_REG ; 
 int /*<<< orphan*/  SPDIFIN_THRES_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct regmap *map, int mode,
					unsigned int val)
{
	FUNC0(map, mode, val, SPDIFIN_THRES_PER_REG,
				     SPDIFIN_CTRL2, SPDIFIN_THRES_WIDTH);
}