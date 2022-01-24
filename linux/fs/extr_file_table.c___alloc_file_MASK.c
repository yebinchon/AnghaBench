#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  fu_rcuhead; } ;
struct file {int f_flags; int /*<<< orphan*/  f_mode; int /*<<< orphan*/  f_pos_lock; int /*<<< orphan*/  f_lock; TYPE_2__ f_owner; int /*<<< orphan*/  f_count; TYPE_1__ f_u; int /*<<< orphan*/  f_cred; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filp_cachep ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 struct file* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct file*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct file *FUNC12(int flags, const struct cred *cred)
{
	struct file *f;
	int error;

	f = FUNC6(filp_cachep, GFP_KERNEL);
	if (FUNC11(!f))
		return FUNC0(-ENOMEM);

	f->f_cred = FUNC5(cred);
	error = FUNC9(f);
	if (FUNC11(error)) {
		FUNC4(&f->f_u.fu_rcuhead);
		return FUNC0(error);
	}

	FUNC2(&f->f_count, 1);
	FUNC8(&f->f_owner.lock);
	FUNC10(&f->f_lock);
	FUNC7(&f->f_pos_lock);
	FUNC3(f);
	f->f_flags = flags;
	f->f_mode = FUNC1(flags);
	/* f->f_version: 0 */

	return f;
}