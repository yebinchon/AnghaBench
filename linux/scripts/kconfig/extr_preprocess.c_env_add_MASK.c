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
struct env {int /*<<< orphan*/  node; void* value; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  env_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct env* FUNC1 (int) ; 
 void* FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *name, const char *value)
{
	struct env *e;

	e = FUNC1(sizeof(*e));
	e->name = FUNC2(name);
	e->value = FUNC2(value);

	FUNC0(&e->node, &env_list);
}