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
struct table_instance {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct table_instance*,struct table_instance*,int) ; 
 struct table_instance* FUNC1 (int) ; 

__attribute__((used)) static struct table_instance *FUNC2(struct table_instance *ti,
						    int n_buckets, bool ufid)
{
	struct table_instance *new_ti;

	new_ti = FUNC1(n_buckets);
	if (!new_ti)
		return NULL;

	FUNC0(ti, new_ti, ufid);

	return new_ti;
}