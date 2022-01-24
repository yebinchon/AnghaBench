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
struct mdpy_type {int /*<<< orphan*/  name; } ;
struct kobject {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct mdpy_type const*) ; 
 struct mdpy_type const* mdpy_types ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct mdpy_type *FUNC2(struct kobject *kobj)
{
	int i;

	for (i = 0; i < FUNC0(mdpy_types); i++)
		if (FUNC1(mdpy_types[i].name, kobj->name) == 0)
			return mdpy_types + i;
	return NULL;
}