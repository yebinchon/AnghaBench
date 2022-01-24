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
struct TYPE_6__ {TYPE_1__* net; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_7__ {size_t type; int /*<<< orphan*/  protocol; } ;
struct TYPE_8__ {int request; int denied; scalar_t__ peer; int /*<<< orphan*/  label; TYPE_3__ net; } ;
struct TYPE_5__ {size_t family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAGS_NONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_PERMS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct common_audit_data*) ; 
 scalar_t__* address_family_names ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_mask_names ; 
 scalar_t__* sock_type_names ; 

void FUNC6(struct audit_buffer *ab, void *va)
{
	struct common_audit_data *sa = va;

	FUNC3(ab, " family=");
	if (address_family_names[sa->u.net->family])
		FUNC4(ab, address_family_names[sa->u.net->family]);
	else
		FUNC3(ab, "\"unknown(%d)\"", sa->u.net->family);
	FUNC3(ab, " sock_type=");
	if (sock_type_names[FUNC2(sa)->net.type])
		FUNC4(ab, sock_type_names[FUNC2(sa)->net.type]);
	else
		FUNC3(ab, "\"unknown(%d)\"", FUNC2(sa)->net.type);
	FUNC3(ab, " protocol=%d", FUNC2(sa)->net.protocol);

	if (FUNC2(sa)->request & NET_PERMS_MASK) {
		FUNC3(ab, " requested_mask=");
		FUNC0(ab, FUNC2(sa)->request, NULL, 0,
				   net_mask_names, NET_PERMS_MASK);

		if (FUNC2(sa)->denied & NET_PERMS_MASK) {
			FUNC3(ab, " denied_mask=");
			FUNC0(ab, FUNC2(sa)->denied, NULL, 0,
					   net_mask_names, NET_PERMS_MASK);
		}
	}
	if (FUNC2(sa)->peer) {
		FUNC3(ab, " peer=");
		FUNC1(ab, FUNC5(FUNC2(sa)->label), FUNC2(sa)->peer,
				FLAGS_NONE, GFP_ATOMIC);
	}
}