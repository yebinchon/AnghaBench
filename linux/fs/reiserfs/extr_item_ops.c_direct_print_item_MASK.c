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
struct item_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct item_head *ih, char *item)
{
	int j = 0;

/*    return; */
	FUNC1("\"");
	while (j < FUNC0(ih))
		FUNC1("%c", item[j++]);
	FUNC1("\"\n");
}