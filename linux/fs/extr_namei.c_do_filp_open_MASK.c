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
struct open_flags {int lookup_flags; } ;
struct nameidata {int dummy; } ;
struct filename {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int LOOKUP_RCU ; 
 int LOOKUP_REVAL ; 
 struct file* FUNC1 (struct nameidata*,struct open_flags const*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int,struct filename*) ; 
 scalar_t__ FUNC4 (int) ; 

struct file *FUNC5(int dfd, struct filename *pathname,
		const struct open_flags *op)
{
	struct nameidata nd;
	int flags = op->lookup_flags;
	struct file *filp;

	FUNC3(&nd, dfd, pathname);
	filp = FUNC1(&nd, op, flags | LOOKUP_RCU);
	if (FUNC4(filp == FUNC0(-ECHILD)))
		filp = FUNC1(&nd, op, flags);
	if (FUNC4(filp == FUNC0(-ESTALE)))
		filp = FUNC1(&nd, op, flags | LOOKUP_REVAL);
	FUNC2();
	return filp;
}