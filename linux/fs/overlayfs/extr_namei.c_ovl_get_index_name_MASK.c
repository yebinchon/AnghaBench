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
struct qstr {int dummy; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ovl_fh*) ; 
 int FUNC1 (struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct ovl_fh*) ; 
 struct ovl_fh* FUNC3 (struct dentry*,int) ; 
 int FUNC4 (struct ovl_fh*,struct qstr*) ; 

int FUNC5(struct dentry *origin, struct qstr *name)
{
	struct ovl_fh *fh;
	int err;

	fh = FUNC3(origin, false);
	if (FUNC0(fh))
		return FUNC1(fh);

	err = FUNC4(fh, name);

	FUNC2(fh);
	return err;
}