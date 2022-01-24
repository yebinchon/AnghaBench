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
 int JZ4740_CODEC_1_RESET ; 
 int JZ4740_CODEC_1_SUSPEND ; 
 int /*<<< orphan*/  JZ4740_REG_CODEC_1 ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct regmap *regmap)
{
	FUNC1(regmap, JZ4740_REG_CODEC_1,
		JZ4740_CODEC_1_RESET, JZ4740_CODEC_1_RESET);
	FUNC2(2);

	FUNC1(regmap, JZ4740_REG_CODEC_1,
		JZ4740_CODEC_1_SUSPEND | JZ4740_CODEC_1_RESET, 0);

	FUNC0(regmap);
}