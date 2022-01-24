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
struct nlattr {int dummy; } ;
struct disttable {size_t size; int /*<<< orphan*/ * table; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  __s16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NETEM_DIST_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct disttable*) ; 
 struct disttable* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct nlattr const*) ; 
 int FUNC3 (struct nlattr const*) ; 
 int /*<<< orphan*/ * FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct disttable*,struct disttable*) ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch, struct disttable **tbl,
			  const struct nlattr *attr)
{
	size_t n = FUNC3(attr)/sizeof(__s16);
	const __s16 *data = FUNC2(attr);
	spinlock_t *root_lock;
	struct disttable *d;
	int i;

	if (!n || n > NETEM_DIST_MAX)
		return -EINVAL;

	d = FUNC1(sizeof(struct disttable) + n * sizeof(s16), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	d->size = n;
	for (i = 0; i < n; i++)
		d->table[i] = data[i];

	root_lock = FUNC4(sch);

	FUNC5(root_lock);
	FUNC7(*tbl, d);
	FUNC6(root_lock);

	FUNC0(d);
	return 0;
}