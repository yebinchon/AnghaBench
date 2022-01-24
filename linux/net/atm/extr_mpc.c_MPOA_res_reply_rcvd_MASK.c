#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct mpoa_client {TYPE_4__* in_ops; TYPE_3__* dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  in_dst_ip; } ;
struct TYPE_14__ {TYPE_1__ in_info; } ;
struct k_message {TYPE_2__ content; } ;
struct TYPE_17__ {scalar_t__ entry_state; scalar_t__ shortcut; scalar_t__ refresh_time; void* reply_wait; void* time; TYPE_1__ ctrl_info; } ;
typedef  TYPE_5__ in_cache_entry ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_16__ {int /*<<< orphan*/  (* put ) (TYPE_5__*) ;TYPE_5__* (* get ) (int /*<<< orphan*/ ,struct mpoa_client*) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ INGRESS_RESOLVED ; 
 scalar_t__ INGRESS_RESOLVING ; 
 int /*<<< orphan*/  FUNC0 (struct k_message*,struct mpoa_client*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC11(struct k_message *msg, struct mpoa_client *mpc)
{
	__be32 dst_ip = msg->content.in_info.in_dst_ip;
	in_cache_entry *entry = mpc->in_ops->get(dst_ip, mpc);

	FUNC3("(%s) ip %pI4\n",
		mpc->dev->name, &dst_ip);
	FUNC1("(%s) entry = %p",
		 mpc->dev->name, entry);
	if (entry == NULL) {
		FUNC5("(%s) ARGH, received res. reply for an entry that doesn't exist.\n",
			mpc->dev->name);
		return;
	}
	FUNC2(" entry_state = %d ", entry->entry_state);

	if (entry->entry_state == INGRESS_RESOLVED) {
		FUNC5("(%s) RESOLVED entry!\n", mpc->dev->name);
		mpc->in_ops->put(entry);
		return;
	}

	entry->ctrl_info = msg->content.in_info;
	entry->time = FUNC4();
	/* Used in refreshing func from now on */
	entry->reply_wait = FUNC4();
	entry->refresh_time = 0;
	FUNC2("entry->shortcut = %p\n", entry->shortcut);

	if (entry->entry_state == INGRESS_RESOLVING &&
	    entry->shortcut != NULL) {
		entry->entry_state = INGRESS_RESOLVED;
		mpc->in_ops->put(entry);
		return; /* Shortcut already open... */
	}

	if (entry->shortcut != NULL) {
		FUNC5("(%s) entry->shortcut != NULL, impossible!\n",
			mpc->dev->name);
		mpc->in_ops->put(entry);
		return;
	}

	FUNC0(msg, mpc, entry);
	entry->entry_state = INGRESS_RESOLVED;
	mpc->in_ops->put(entry);

	return;

}