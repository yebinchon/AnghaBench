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
struct trace_array {int dummy; } ;
struct hist_trigger_attrs {int pause; int cont; int clear; scalar_t__ clock; int /*<<< orphan*/  keys_str; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct hist_trigger_attrs* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct hist_trigger_attrs*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct hist_trigger_attrs* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,struct hist_trigger_attrs*) ; 
 int FUNC5 (struct trace_array*,char*,struct hist_trigger_attrs*) ; 
 scalar_t__ FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char**,char*) ; 

__attribute__((used)) static struct hist_trigger_attrs *
FUNC9(struct trace_array *tr, char *trigger_str)
{
	struct hist_trigger_attrs *attrs;
	int ret = 0;

	attrs = FUNC3(sizeof(*attrs), GFP_KERNEL);
	if (!attrs)
		return FUNC0(-ENOMEM);

	while (trigger_str) {
		char *str = FUNC8(&trigger_str, ":");

		if (FUNC6(str, '=')) {
			ret = FUNC5(tr, str, attrs);
			if (ret)
				goto free;
		} else if (FUNC7(str, "pause") == 0)
			attrs->pause = true;
		else if ((FUNC7(str, "cont") == 0) ||
			 (FUNC7(str, "continue") == 0))
			attrs->cont = true;
		else if (FUNC7(str, "clear") == 0)
			attrs->clear = true;
		else {
			ret = FUNC4(str, attrs);
			if (ret)
				goto free;
		}
	}

	if (!attrs->keys_str) {
		ret = -EINVAL;
		goto free;
	}

	if (!attrs->clock) {
		attrs->clock = FUNC2("global", GFP_KERNEL);
		if (!attrs->clock) {
			ret = -ENOMEM;
			goto free;
		}
	}

	return attrs;
 free:
	FUNC1(attrs);

	return FUNC0(ret);
}