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
 int /*<<< orphan*/  PDM_CTRL ; 
 int /*<<< orphan*/  PDM_CTRL_EN ; 
 int /*<<< orphan*/  PDM_CTRL_RST_FIFO ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct regmap *map)
{
	/* Reset AFIFO */
	FUNC0(map, PDM_CTRL, PDM_CTRL_RST_FIFO, PDM_CTRL_RST_FIFO);
	FUNC0(map, PDM_CTRL, PDM_CTRL_RST_FIFO, 0);

	/* Enable PDM */
	FUNC0(map, PDM_CTRL, PDM_CTRL_EN, PDM_CTRL_EN);
}