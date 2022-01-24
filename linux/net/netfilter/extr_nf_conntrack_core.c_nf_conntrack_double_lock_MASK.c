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

/* Variables and functions */
 unsigned int CONNTRACK_LOCKS ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  nf_conntrack_generation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nf_conntrack_locks ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct net *net, unsigned int h1,
				     unsigned int h2, unsigned int sequence)
{
	h1 %= CONNTRACK_LOCKS;
	h2 %= CONNTRACK_LOCKS;
	if (h1 <= h2) {
		FUNC1(&nf_conntrack_locks[h1]);
		if (h1 != h2)
			FUNC3(&nf_conntrack_locks[h2],
					 SINGLE_DEPTH_NESTING);
	} else {
		FUNC1(&nf_conntrack_locks[h2]);
		FUNC3(&nf_conntrack_locks[h1],
				 SINGLE_DEPTH_NESTING);
	}
	if (FUNC2(&nf_conntrack_generation, sequence)) {
		FUNC0(h1, h2);
		return true;
	}
	return false;
}