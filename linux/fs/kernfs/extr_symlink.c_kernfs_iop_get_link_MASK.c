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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOMEM ; 
 char const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct inode*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  kfree_link ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static const char *FUNC6(struct dentry *dentry,
				       struct inode *inode,
				       struct delayed_call *done)
{
	char *body;
	int error;

	if (!dentry)
		return FUNC0(-ECHILD);
	body = FUNC3(PAGE_SIZE, GFP_KERNEL);
	if (!body)
		return FUNC0(-ENOMEM);
	error = FUNC1(inode, body);
	if (FUNC5(error < 0)) {
		FUNC2(body);
		return FUNC0(error);
	}
	FUNC4(done, kfree_link, body);
	return body;
}