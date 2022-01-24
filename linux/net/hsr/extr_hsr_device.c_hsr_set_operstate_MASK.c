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
struct hsr_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IF_OPER_DOWN ; 
 int /*<<< orphan*/  IF_OPER_LOWERLAYERDOWN ; 
 int /*<<< orphan*/  IF_OPER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hsr_port *master, bool has_carrier)
{
	if (!FUNC1(master->dev)) {
		FUNC0(master->dev, IF_OPER_DOWN);
		return;
	}

	if (has_carrier)
		FUNC0(master->dev, IF_OPER_UP);
	else
		FUNC0(master->dev, IF_OPER_LOWERLAYERDOWN);
}