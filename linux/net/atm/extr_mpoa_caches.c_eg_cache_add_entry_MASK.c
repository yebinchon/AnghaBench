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
struct mpoa_client {int /*<<< orphan*/  egress_lock; int /*<<< orphan*/  mps_ctrl_addr; TYPE_3__* eg_cache; } ;
struct TYPE_7__ {int /*<<< orphan*/  mps_ip; int /*<<< orphan*/  cache_id; int /*<<< orphan*/  eg_dst_ip; } ;
struct TYPE_6__ {TYPE_2__ eg_info; } ;
struct k_message {TYPE_1__ content; } ;
struct TYPE_8__ {int /*<<< orphan*/  use; TYPE_2__ ctrl_info; int /*<<< orphan*/  entry_state; int /*<<< orphan*/  time; int /*<<< orphan*/  MPS_ctrl_ATM_addr; struct TYPE_8__* prev; struct TYPE_8__* next; } ;
typedef  TYPE_3__ eg_cache_entry ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_ESA_LEN ; 
 int /*<<< orphan*/  EGRESS_RESOLVED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static eg_cache_entry *FUNC10(struct k_message *msg,
					  struct mpoa_client *client)
{
	eg_cache_entry *entry = FUNC2(sizeof(eg_cache_entry), GFP_KERNEL);

	if (entry == NULL) {
		FUNC5("out of memory\n");
		return NULL;
	}

	FUNC0("adding an egress entry, ip = %pI4, this should be our IP\n",
		&msg->content.eg_info.eg_dst_ip);

	FUNC7(&entry->use, 1);
	FUNC0("new_eg_cache_entry: about to lock\n");
	FUNC8(&client->egress_lock);
	entry->next = client->eg_cache;
	entry->prev = NULL;
	if (client->eg_cache != NULL)
		client->eg_cache->prev = entry;
	client->eg_cache = entry;

	FUNC3(entry->MPS_ctrl_ATM_addr, client->mps_ctrl_addr, ATM_ESA_LEN);
	entry->ctrl_info = msg->content.eg_info;
	entry->time = FUNC1();
	entry->entry_state = EGRESS_RESOLVED;
	FUNC0("new_eg_cache_entry cache_id %u\n",
		FUNC4(entry->ctrl_info.cache_id));
	FUNC0("mps_ip = %pI4\n", &entry->ctrl_info.mps_ip);
	FUNC6(&entry->use);

	FUNC9(&client->egress_lock);
	FUNC0("new_eg_cache_entry: unlocked\n");

	return entry;
}