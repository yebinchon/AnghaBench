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
struct option {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ OPTION_END ; 
 struct option* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct option*,struct option const*,int) ; 
 int /*<<< orphan*/  option__cmp ; 
 int /*<<< orphan*/  FUNC2 (struct option*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct option *FUNC3(const struct option *opts)
{
	int nr_opts = 0, len;
	const struct option *o = opts;
	struct option *ordered;

	for (o = opts; o->type != OPTION_END; o++)
		++nr_opts;

	len = sizeof(*o) * (nr_opts + 1);
	ordered = FUNC0(len);
	if (!ordered)
		goto out;
	FUNC1(ordered, opts, len);

	FUNC2(ordered, nr_opts, sizeof(*o), option__cmp);
out:
	return ordered;
}