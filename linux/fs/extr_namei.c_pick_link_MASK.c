#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct path {scalar_t__ mnt; } ;
struct saved {unsigned int seq; int /*<<< orphan*/  done; struct path link; } ;
struct TYPE_2__ {scalar_t__ mnt; int /*<<< orphan*/ * dentry; } ;
struct nameidata {int flags; struct inode* link_inode; scalar_t__ depth; struct saved* stack; TYPE_1__ path; int /*<<< orphan*/  total_link_count; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int ELOOP ; 
 int LOOKUP_RCU ; 
 scalar_t__ MAXSYMLINKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,struct path*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct nameidata*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct nameidata *nd, struct path *link,
		     struct inode *inode, unsigned seq)
{
	int error;
	struct saved *last;
	if (FUNC10(nd->total_link_count++ >= MAXSYMLINKS)) {
		FUNC7(link, nd);
		return -ELOOP;
	}
	if (!(nd->flags & LOOKUP_RCU)) {
		if (link->mnt == nd->path.mnt)
			FUNC4(link->mnt);
	}
	error = FUNC5(nd);
	if (FUNC10(error)) {
		if (error == -ECHILD) {
			if (FUNC10(!FUNC2(nd, link, seq))) {
				FUNC1(nd);
				nd->depth = 0;
				nd->flags &= ~LOOKUP_RCU;
				nd->path.mnt = NULL;
				nd->path.dentry = NULL;
				FUNC8();
			} else if (FUNC3(FUNC9(nd)) == 0)
				error = FUNC5(nd);
		}
		if (error) {
			FUNC6(link);
			return error;
		}
	}

	last = nd->stack + nd->depth++;
	last->link = *link;
	FUNC0(&last->done);
	nd->link_inode = inode;
	last->seq = seq;
	return 1;
}