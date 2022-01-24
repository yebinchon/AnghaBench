#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct mpoa_client {TYPE_4__* eg_ops; int /*<<< orphan*/  egress_lock; TYPE_3__* dev; } ;
struct TYPE_5__ {scalar_t__ holding_time; int /*<<< orphan*/  cache_id; } ;
struct TYPE_6__ {TYPE_1__ eg_info; } ;
struct k_message {TYPE_2__ content; } ;
typedef  int /*<<< orphan*/  eg_cache_entry ;
struct TYPE_8__ {int /*<<< orphan*/  (* put ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* remove_entry ) (int /*<<< orphan*/ *,struct mpoa_client*) ;int /*<<< orphan*/  (* update ) (int /*<<< orphan*/ *,scalar_t__) ;int /*<<< orphan*/ * (* add_entry ) (struct k_message*,struct mpoa_client*) ;int /*<<< orphan*/ * (* get_by_cache_id ) (int /*<<< orphan*/ ,struct mpoa_client*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct mpoa_client*) ; 
 int /*<<< orphan*/ * FUNC2 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct k_message *msg,
				  struct mpoa_client *mpc)
{
	uint16_t holding_time;
	eg_cache_entry *entry = mpc->eg_ops->get_by_cache_id(msg->content.eg_info.cache_id, mpc);

	holding_time = msg->content.eg_info.holding_time;
	FUNC0("(%s) entry = %p, holding_time = %u\n",
		mpc->dev->name, entry, holding_time);
	if (entry == NULL && holding_time) {
		entry = mpc->eg_ops->add_entry(msg, mpc);
		mpc->eg_ops->put(entry);
		return;
	}
	if (holding_time) {
		mpc->eg_ops->update(entry, holding_time);
		return;
	}

	FUNC7(&mpc->egress_lock);
	mpc->eg_ops->remove_entry(entry, mpc);
	FUNC8(&mpc->egress_lock);

	mpc->eg_ops->put(entry);
}