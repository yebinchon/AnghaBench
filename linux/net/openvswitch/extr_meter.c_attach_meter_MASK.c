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
struct hlist_head {int dummy; } ;
struct dp_meter {int /*<<< orphan*/  dp_hash_node; int /*<<< orphan*/  id; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct hlist_head* FUNC1 (struct datapath*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct datapath *dp, struct dp_meter *meter)
{
	struct hlist_head *head = FUNC1(dp, meter->id);

	FUNC0(&meter->dp_hash_node, head);
}