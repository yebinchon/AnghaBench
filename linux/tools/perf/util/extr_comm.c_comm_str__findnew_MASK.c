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
struct rb_root {int dummy; } ;
struct comm_str {int dummy; } ;

/* Variables and functions */
 struct comm_str* FUNC0 (char const*,struct rb_root*) ; 
 int /*<<< orphan*/  comm_str_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct comm_str *FUNC3(const char *str, struct rb_root *root)
{
	struct comm_str *cs;

	FUNC1(&comm_str_lock);
	cs = FUNC0(str, root);
	FUNC2(&comm_str_lock);

	return cs;
}