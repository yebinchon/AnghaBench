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
struct uprobe_consumer {int dummy; } ;
struct uprobe {int /*<<< orphan*/  consumers; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uprobe*,struct uprobe_consumer*) ; 
 int /*<<< orphan*/  FUNC2 (struct uprobe*) ; 
 int FUNC3 (struct uprobe*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct uprobe *uprobe, struct uprobe_consumer *uc)
{
	int err;

	if (FUNC0(!FUNC1(uprobe, uc)))
		return;

	err = FUNC3(uprobe, NULL);
	/* TODO : cant unregister? schedule a worker thread */
	if (!uprobe->consumers && !err)
		FUNC2(uprobe);
}