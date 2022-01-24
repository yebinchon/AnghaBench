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
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 struct cred* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry)
{
	const struct cred *old_cred;
	int err;

	old_cred = FUNC0(dentry->d_sb);
	err = FUNC1(dentry, false);
	FUNC2(old_cred);

	return err;
}