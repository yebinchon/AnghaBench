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
struct script_config {size_t index; int /*<<< orphan*/  extra_format; int /*<<< orphan*/ * paths; int /*<<< orphan*/ * names; } ;

/* Variables and functions */
 size_t SCRIPT_MAX_NO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value, void *data)
{
	struct script_config *c = data;

	if (!FUNC2(var, "scripts."))
		return -1;
	if (c->index >= SCRIPT_MAX_NO)
		return -1;
	c->names[c->index] = FUNC1(var + 7);
	if (!c->names[c->index])
		return -1;
	if (FUNC0(&c->paths[c->index], "%s %d", value,
		     c->extra_format) < 0)
		return -1;
	c->index++;
	return 0;
}