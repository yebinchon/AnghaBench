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
struct path {int /*<<< orphan*/  dentry; } ;
struct nameidata {int last_type; struct qstr last; } ;
struct filename {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INODE_PARENT ; 
 int ECHILD ; 
 struct filename* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct filename*) ; 
 unsigned int LOOKUP_RCU ; 
 unsigned int LOOKUP_REVAL ; 
 int /*<<< orphan*/  FUNC2 (struct filename*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct nameidata*,unsigned int,struct path*) ; 
 int /*<<< orphan*/  FUNC5 (struct filename*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nameidata*,int,struct filename*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct filename *FUNC9(int dfd, struct filename *name,
				unsigned int flags, struct path *parent,
				struct qstr *last, int *type)
{
	int retval;
	struct nameidata nd;

	if (FUNC1(name))
		return name;
	FUNC7(&nd, dfd, name);
	retval = FUNC4(&nd, flags | LOOKUP_RCU, parent);
	if (FUNC8(retval == -ECHILD))
		retval = FUNC4(&nd, flags, parent);
	if (FUNC8(retval == -ESTALE))
		retval = FUNC4(&nd, flags | LOOKUP_REVAL, parent);
	if (FUNC3(!retval)) {
		*last = nd.last;
		*type = nd.last_type;
		FUNC2(name, parent->dentry, AUDIT_INODE_PARENT);
	} else {
		FUNC5(name);
		name = FUNC0(retval);
	}
	FUNC6();
	return name;
}