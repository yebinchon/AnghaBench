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
struct net {int dummy; } ;
struct inet_frags {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  rhash_params; } ;
struct fqdir {struct inet_frags* f; int /*<<< orphan*/  rhashtable; struct net* net; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct fqdir*) ; 
 struct fqdir* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct fqdir **fqdirp, struct inet_frags *f, struct net *net)
{
	struct fqdir *fqdir = FUNC1(sizeof(*fqdir), GFP_KERNEL);
	int res;

	if (!fqdir)
		return -ENOMEM;
	fqdir->f = f;
	fqdir->net = net;
	res = FUNC3(&fqdir->rhashtable, &fqdir->f->rhash_params);
	if (res < 0) {
		FUNC0(fqdir);
		return res;
	}
	FUNC2(&f->refcnt);
	*fqdirp = fqdir;
	return 0;
}