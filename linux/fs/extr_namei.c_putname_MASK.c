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
struct filename {scalar_t__ refcnt; scalar_t__ name; scalar_t__ iname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct filename*) ; 
 int /*<<< orphan*/  FUNC2 (struct filename*) ; 

void FUNC3(struct filename *name)
{
	FUNC0(name->refcnt <= 0);

	if (--name->refcnt > 0)
		return;

	if (name->name != name->iname) {
		FUNC1(name->name);
		FUNC2(name);
	} else
		FUNC1(name);
}