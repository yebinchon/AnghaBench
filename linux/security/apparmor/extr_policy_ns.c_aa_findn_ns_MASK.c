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
struct aa_ns {int /*<<< orphan*/  sub_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 struct aa_ns* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct aa_ns *FUNC4(struct aa_ns *root, const char *name, size_t n)
{
	struct aa_ns *ns = NULL;

	FUNC2();
	ns = FUNC1(FUNC0(&root->sub_ns, name, n));
	FUNC3();

	return ns;
}