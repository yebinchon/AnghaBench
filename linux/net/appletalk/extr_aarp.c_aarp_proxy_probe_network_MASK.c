#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct atalk_iface {TYPE_2__* dev; } ;
struct atalk_addr {int s_node; int /*<<< orphan*/  s_net; } ;
struct TYPE_3__ {int s_node; int /*<<< orphan*/  s_net; } ;
struct aarp_entry {int expires_at; int status; struct aarp_entry* next; TYPE_2__* dev; TYPE_1__ target_addr; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 int AARP_HASH_SIZE ; 
 unsigned int AARP_RETRANSMIT_LIMIT ; 
 scalar_t__ ARPHRD_LOCALTLK ; 
 scalar_t__ ARPHRD_PPP ; 
 int ATIF_PROBE ; 
 int ATIF_PROBE_FAIL ; 
 int EADDRINUSE ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 struct aarp_entry* FUNC0 () ; 
 int /*<<< orphan*/  aarp_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct atalk_addr*) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct aarp_entry** proxies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct atalk_iface *atif, struct atalk_addr *sa)
{
	int hash, retval = -EPROTONOSUPPORT;
	struct aarp_entry *entry;
	unsigned int count;

	/*
	 * we don't currently support LocalTalk or PPP for proxy AARP;
	 * if someone wants to try and add it, have fun
	 */
	if (atif->dev->type == ARPHRD_LOCALTLK ||
	    atif->dev->type == ARPHRD_PPP)
		goto out;

	/*
	 * create a new AARP entry with the flags set to be published --
	 * we need this one to hang around even if it's in use
	 */
	entry = FUNC0();
	retval = -ENOMEM;
	if (!entry)
		goto out;

	entry->expires_at = -1;
	entry->status = ATIF_PROBE;
	entry->target_addr.s_node = sa->s_node;
	entry->target_addr.s_net = sa->s_net;
	entry->dev = atif->dev;

	FUNC3(&aarp_lock);

	hash = sa->s_node % (AARP_HASH_SIZE - 1);
	entry->next = proxies[hash];
	proxies[hash] = entry;

	for (count = 0; count < AARP_RETRANSMIT_LIMIT; count++) {
		FUNC1(atif->dev, sa);

		/* Defer 1/10th */
		FUNC4(&aarp_lock);
		FUNC2(100);
		FUNC3(&aarp_lock);

		if (entry->status & ATIF_PROBE_FAIL)
			break;
	}

	if (entry->status & ATIF_PROBE_FAIL) {
		entry->expires_at = jiffies - 1; /* free the entry */
		retval = -EADDRINUSE; /* return network full */
	} else { /* clear the probing flag */
		entry->status &= ~ATIF_PROBE;
		retval = 1;
	}

	FUNC4(&aarp_lock);
out:
	return retval;
}