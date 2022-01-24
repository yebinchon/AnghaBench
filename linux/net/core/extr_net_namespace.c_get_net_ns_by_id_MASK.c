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
struct net {int /*<<< orphan*/  netns_ids; } ;

/* Variables and functions */
 struct net* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct net* FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct net *FUNC4(struct net *net, int id)
{
	struct net *peer;

	if (id < 0)
		return NULL;

	FUNC2();
	peer = FUNC0(&net->netns_ids, id);
	if (peer)
		peer = FUNC1(peer);
	FUNC3();

	return peer;
}