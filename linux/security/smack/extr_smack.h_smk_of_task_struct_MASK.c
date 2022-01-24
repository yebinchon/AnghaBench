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
struct smack_known {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 struct cred* FUNC0 (struct task_struct const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 struct smack_known* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct smack_known *FUNC5(
						const struct task_struct *t)
{
	struct smack_known *skp;
	const struct cred *cred;

	FUNC1();

	cred = FUNC0(t);
	skp = FUNC4(FUNC3(cred));

	FUNC2();

	return skp;
}