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
struct scripting_ops {int dummy; } ;
struct script_spec {struct scripting_ops* ops; int /*<<< orphan*/  spec; } ;

/* Variables and functions */
 struct script_spec* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static struct script_spec *FUNC3(const char *spec,
					    struct scripting_ops *ops)
{
	struct script_spec *s = FUNC0(sizeof(*s) + FUNC2(spec) + 1);

	if (s != NULL) {
		FUNC1(s->spec, spec);
		s->ops = ops;
	}

	return s;
}