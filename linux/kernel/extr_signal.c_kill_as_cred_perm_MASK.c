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
struct task_struct {int dummy; } ;
struct cred {int /*<<< orphan*/  uid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 struct cred* FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(const struct cred *cred,
				     struct task_struct *target)
{
	const struct cred *pcred = FUNC0(target);

	return FUNC1(cred->euid, pcred->suid) ||
	       FUNC1(cred->euid, pcred->uid) ||
	       FUNC1(cred->uid, pcred->suid) ||
	       FUNC1(cred->uid, pcred->uid);
}