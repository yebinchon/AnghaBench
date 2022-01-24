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
struct net {int /*<<< orphan*/  nsid_lock; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct net *net, struct net *peer)
{
	int id;

	FUNC1(&net->nsid_lock);
	id = FUNC0(net, peer);
	FUNC2(&net->nsid_lock);
	return id;
}