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

/* Variables and functions */
 int /*<<< orphan*/  CAP_MAC_ADMIN ; 
 unsigned int CAP_OPT_NOAUDIT ; 
 unsigned int CAP_OPT_NONE ; 
 scalar_t__ FUNC0 (struct cred const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (struct cred const*,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct cred* FUNC2 () ; 
 int /*<<< orphan*/  init_user_ns ; 

__attribute__((used)) static bool FUNC3(bool audit)
{
	const struct cred *cred = FUNC2();
	unsigned int opts = audit ? CAP_OPT_NONE : CAP_OPT_NOAUDIT;

	if (FUNC0(cred, &init_user_ns, CAP_MAC_ADMIN, opts))
		return false;
	if (FUNC1(cred, CAP_MAC_ADMIN, opts, true))
		return false;
	return true;
}