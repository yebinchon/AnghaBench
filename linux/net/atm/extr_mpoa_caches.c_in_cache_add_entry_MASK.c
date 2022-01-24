#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mpc_p4; } ;
struct mpoa_client {int /*<<< orphan*/  ingress_lock; TYPE_1__ parameters; int /*<<< orphan*/  mps_ctrl_addr; TYPE_3__* in_cache; } ;
struct TYPE_7__ {int /*<<< orphan*/  holding_time; int /*<<< orphan*/  in_dst_ip; } ;
struct TYPE_8__ {int count; int /*<<< orphan*/  use; TYPE_2__ ctrl_info; int /*<<< orphan*/  entry_state; int /*<<< orphan*/  retry_time; int /*<<< orphan*/  time; int /*<<< orphan*/  MPS_ctrl_ATM_addr; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef  TYPE_3__ in_cache_entry ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_ESA_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOLDING_TIME_DEFAULT ; 
 int /*<<< orphan*/  INGRESS_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static in_cache_entry *FUNC9(__be32 dst_ip,
					  struct mpoa_client *client)
{
	in_cache_entry *entry = FUNC2(sizeof(in_cache_entry), GFP_KERNEL);

	if (entry == NULL) {
		FUNC4("mpoa: mpoa_caches.c: new_in_cache_entry: out of memory\n");
		return NULL;
	}

	FUNC0("adding an ingress entry, ip = %pI4\n", &dst_ip);

	FUNC6(&entry->use, 1);
	FUNC0("new_in_cache_entry: about to lock\n");
	FUNC7(&client->ingress_lock);
	entry->next = client->in_cache;
	entry->prev = NULL;
	if (client->in_cache != NULL)
		client->in_cache->prev = entry;
	client->in_cache = entry;

	FUNC3(entry->MPS_ctrl_ATM_addr, client->mps_ctrl_addr, ATM_ESA_LEN);
	entry->ctrl_info.in_dst_ip = dst_ip;
	entry->time = FUNC1();
	entry->retry_time = client->parameters.mpc_p4;
	entry->count = 1;
	entry->entry_state = INGRESS_INVALID;
	entry->ctrl_info.holding_time = HOLDING_TIME_DEFAULT;
	FUNC5(&entry->use);

	FUNC8(&client->ingress_lock);
	FUNC0("new_in_cache_entry: unlocked\n");

	return entry;
}