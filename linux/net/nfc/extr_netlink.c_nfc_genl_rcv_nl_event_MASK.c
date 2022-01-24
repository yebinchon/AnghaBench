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
struct work_struct {int dummy; } ;
struct urelease_work {int /*<<< orphan*/  portid; } ;
struct notifier_block {int dummy; } ;
struct netlink_notify {scalar_t__ protocol; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ NETLINK_GENERIC ; 
 unsigned long NETLINK_URELEASE ; 
 int NOTIFY_DONE ; 
 struct urelease_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_urelease_event_work ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct work_struct*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *this,
				 unsigned long event, void *ptr)
{
	struct netlink_notify *n = ptr;
	struct urelease_work *w;

	if (event != NETLINK_URELEASE || n->protocol != NETLINK_GENERIC)
		goto out;

	FUNC2("NETLINK_URELEASE event from id %d\n", n->portid);

	w = FUNC1(sizeof(*w), GFP_ATOMIC);
	if (w) {
		FUNC0((struct work_struct *) w, nfc_urelease_event_work);
		w->portid = n->portid;
		FUNC3((struct work_struct *) w);
	}

out:
	return NOTIFY_DONE;
}