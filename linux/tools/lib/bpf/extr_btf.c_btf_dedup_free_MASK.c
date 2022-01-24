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
struct btf_dedup {struct btf_dedup* hypot_list; struct btf_dedup* hypot_map; struct btf_dedup* map; int /*<<< orphan*/ * dedup_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf_dedup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct btf_dedup *d)
{
	FUNC1(d->dedup_table);
	d->dedup_table = NULL;

	FUNC0(d->map);
	d->map = NULL;

	FUNC0(d->hypot_map);
	d->hypot_map = NULL;

	FUNC0(d->hypot_list);
	d->hypot_list = NULL;

	FUNC0(d);
}