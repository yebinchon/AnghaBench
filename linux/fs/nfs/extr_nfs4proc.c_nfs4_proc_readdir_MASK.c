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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dentry*,struct cred const*,int /*<<< orphan*/ ,struct page**,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, const struct cred *cred,
		u64 cookie, struct page **pages, unsigned int count, bool plus)
{
	struct nfs4_exception exception = {
		.interruptible = true,
	};
	int err;
	do {
		err = FUNC1(dentry, cred, cookie,
				pages, count, plus);
		FUNC4(FUNC2(dentry), err);
		err = FUNC3(FUNC0(FUNC2(dentry)), err,
				&exception);
	} while (exception.retry);
	return err;
}