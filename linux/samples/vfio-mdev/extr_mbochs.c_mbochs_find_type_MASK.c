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
struct mbochs_type {int /*<<< orphan*/  name; } ;
struct kobject {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct mbochs_type const*) ; 
 struct mbochs_type const* mbochs_types ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct mbochs_type *FUNC2(struct kobject *kobj)
{
	int i;

	for (i = 0; i < FUNC0(mbochs_types); i++)
		if (FUNC1(mbochs_types[i].name, kobj->name) == 0)
			return mbochs_types + i;
	return NULL;
}