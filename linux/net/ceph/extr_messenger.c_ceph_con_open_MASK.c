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
struct ceph_entity_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; scalar_t__ type; } ;
struct ceph_connection {scalar_t__ state; int /*<<< orphan*/  mutex; scalar_t__ delay; int /*<<< orphan*/  peer_addr; TYPE_1__ peer_name; } ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 scalar_t__ CON_STATE_CLOSED ; 
 scalar_t__ CON_STATE_PREOPEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_entity_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ceph_entity_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_connection*) ; 

void FUNC8(struct ceph_connection *con,
		   __u8 entity_type, __u64 entity_num,
		   struct ceph_entity_addr *addr)
{
	FUNC5(&con->mutex);
	FUNC3("con_open %p %s\n", con, FUNC1(addr));

	FUNC0(con->state != CON_STATE_CLOSED);
	con->state = CON_STATE_PREOPEN;

	con->peer_name.type = (__u8) entity_type;
	con->peer_name.num = FUNC2(entity_num);

	FUNC4(&con->peer_addr, addr, sizeof(*addr));
	con->delay = 0;      /* reset backoff memory */
	FUNC6(&con->mutex);
	FUNC7(con);
}