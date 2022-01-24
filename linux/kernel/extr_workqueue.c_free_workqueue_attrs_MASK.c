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
struct workqueue_attrs {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_attrs*) ; 

void FUNC2(struct workqueue_attrs *attrs)
{
	if (attrs) {
		FUNC0(attrs->cpumask);
		FUNC1(attrs);
	}
}