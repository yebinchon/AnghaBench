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
 int /*<<< orphan*/  RT5682_I2C_MODE ; 
 int /*<<< orphan*/  RT5682_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct regmap *regmap)
{
	FUNC0(regmap, RT5682_RESET, 0);
	FUNC0(regmap, RT5682_I2C_MODE, 1);
}