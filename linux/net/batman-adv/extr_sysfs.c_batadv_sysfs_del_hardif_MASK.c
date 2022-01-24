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
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*,int /*<<< orphan*/ ) ; 

void FUNC3(struct kobject **hardif_obj)
{
	FUNC2(*hardif_obj, KOBJ_REMOVE);
	FUNC0(*hardif_obj);
	FUNC1(*hardif_obj);
	*hardif_obj = NULL;
}