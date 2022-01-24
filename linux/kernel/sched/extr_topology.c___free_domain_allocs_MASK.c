#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s_data {int /*<<< orphan*/  sd; TYPE_1__* rd; } ;
struct cpumask {int dummy; } ;
typedef  enum s_alloc { ____Placeholder_s_alloc } s_alloc ;
struct TYPE_2__ {int /*<<< orphan*/  rcu; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
#define  sa_none 131 
#define  sa_rootdomain 130 
#define  sa_sd 129 
#define  sa_sd_storage 128 

__attribute__((used)) static void FUNC4(struct s_data *d, enum s_alloc what,
				 const struct cpumask *cpu_map)
{
	switch (what) {
	case sa_rootdomain:
		if (!FUNC1(&d->rd->refcount))
			FUNC3(&d->rd->rcu);
		/* Fall through */
	case sa_sd:
		FUNC2(d->sd);
		/* Fall through */
	case sa_sd_storage:
		FUNC0(cpu_map);
		/* Fall through */
	case sa_none:
		break;
	}
}