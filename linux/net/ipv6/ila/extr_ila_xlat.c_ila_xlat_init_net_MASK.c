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
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;

/* Variables and functions */
 int FUNC0 (struct ila_net*) ; 
 int /*<<< orphan*/  ila_net_id ; 
 struct ila_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rht_params ; 

int FUNC3(struct net *net)
{
	struct ila_net *ilan = FUNC1(net, ila_net_id);
	int err;

	err = FUNC0(ilan);
	if (err)
		return err;

	FUNC2(&ilan->xlat.rhash_table, &rht_params);

	return 0;
}