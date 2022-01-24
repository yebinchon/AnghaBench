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
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct cred*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct cred*,struct cred const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct cred*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct cred*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred*,struct cred const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct cred*) ; 
 int /*<<< orphan*/  ambient ; 
 int /*<<< orphan*/  effective ; 
 int /*<<< orphan*/  permitted ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static inline bool FUNC8(struct cred *new, const struct cred *old,
				     kuid_t root, bool has_fcap)
{
	bool ret = false;

	if ((FUNC2(effective, ambient, new) &&
	     !(FUNC0(effective, new) &&
	       (FUNC3(root, new) || FUNC4(root, new)) &&
	       FUNC7())) ||
	    (FUNC7() &&
	     FUNC6(root, new) &&
	     !FUNC0(effective, new)) ||
	    (!FUNC5(new, old) &&
	     ((has_fcap &&
	       FUNC1(permitted, new, old)) ||
	      FUNC1(ambient, new, old))))

		ret = true;

	return ret;
}