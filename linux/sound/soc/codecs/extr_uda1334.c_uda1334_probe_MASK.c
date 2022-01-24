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
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/ * list; } ;
struct uda1334_priv {int /*<<< orphan*/ * rate_constraint_list; TYPE_1__ rate_constraint; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uda1334_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	struct uda1334_priv *uda1334 = FUNC1(component);

	uda1334->rate_constraint.list = &uda1334->rate_constraint_list[0];
	uda1334->rate_constraint.count =
		FUNC0(uda1334->rate_constraint_list);

	return 0;
}