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
struct ncsi_package {unsigned char id; int /*<<< orphan*/  node; int /*<<< orphan*/  channel_whitelist; int /*<<< orphan*/  channels; int /*<<< orphan*/  lock; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  package_num; int /*<<< orphan*/  packages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct ncsi_package*) ; 
 struct ncsi_package* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ncsi_package* FUNC4 (struct ncsi_dev_priv*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

struct ncsi_package *FUNC8(struct ncsi_dev_priv *ndp,
				      unsigned char id)
{
	struct ncsi_package *np, *tmp;
	unsigned long flags;

	np = FUNC2(sizeof(*np), GFP_ATOMIC);
	if (!np)
		return NULL;

	np->id = id;
	np->ndp = ndp;
	FUNC5(&np->lock);
	FUNC0(&np->channels);
	np->channel_whitelist = UINT_MAX;

	FUNC6(&ndp->lock, flags);
	tmp = FUNC4(ndp, id);
	if (tmp) {
		FUNC7(&ndp->lock, flags);
		FUNC1(np);
		return tmp;
	}

	FUNC3(&np->node, &ndp->packages);
	ndp->package_num++;
	FUNC7(&ndp->lock, flags);

	return np;
}