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
struct task_security_struct {int dummy; } ;
typedef  struct cred const cred ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* FUNC0 (struct cred const*) ; 

__attribute__((used)) static int FUNC1(struct cred *new, const struct cred *old,
				gfp_t gfp)
{
	const struct task_security_struct *old_tsec = FUNC0(old);
	struct task_security_struct *tsec = FUNC0(new);

	*tsec = *old_tsec;
	return 0;
}