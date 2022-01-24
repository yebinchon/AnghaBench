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
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct ceph_msg {TYPE_1__ hdr; } ;
struct ceph_mon_client {TYPE_2__* client; } ;
struct ceph_connection {struct ceph_mon_client* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* extra_mon_dispatch ) (TYPE_2__*,struct ceph_msg*) ;int /*<<< orphan*/  osdc; } ;

/* Variables and functions */
#define  CEPH_MSG_AUTH_REPLY 134 
#define  CEPH_MSG_MON_COMMAND_ACK 133 
#define  CEPH_MSG_MON_GET_VERSION_REPLY 132 
#define  CEPH_MSG_MON_MAP 131 
#define  CEPH_MSG_MON_SUBSCRIBE_ACK 130 
#define  CEPH_MSG_OSD_MAP 129 
#define  CEPH_MSG_STATFS_REPLY 128 
 int /*<<< orphan*/  FUNC0 (struct ceph_mon_client*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mon_client*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mon_client*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mon_client*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_mon_client*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mon_client*,struct ceph_msg*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct ceph_msg*) ; 

__attribute__((used)) static void FUNC12(struct ceph_connection *con, struct ceph_msg *msg)
{
	struct ceph_mon_client *monc = con->private;
	int type = FUNC9(msg->hdr.type);

	if (!monc)
		return;

	switch (type) {
	case CEPH_MSG_AUTH_REPLY:
		FUNC4(monc, msg);
		break;

	case CEPH_MSG_MON_SUBSCRIBE_ACK:
		FUNC8(monc, msg);
		break;

	case CEPH_MSG_STATFS_REPLY:
		FUNC7(monc, msg);
		break;

	case CEPH_MSG_MON_GET_VERSION_REPLY:
		FUNC6(monc, msg);
		break;

	case CEPH_MSG_MON_COMMAND_ACK:
		FUNC5(monc, msg);
		break;

	case CEPH_MSG_MON_MAP:
		FUNC0(monc, msg);
		break;

	case CEPH_MSG_OSD_MAP:
		FUNC3(&monc->client->osdc, msg);
		break;

	default:
		/* can the chained handler handle it? */
		if (monc->client->extra_mon_dispatch &&
		    monc->client->extra_mon_dispatch(monc->client, msg) == 0)
			break;

		FUNC10("received unknown message type %d %s\n", type,
		       FUNC2(type));
	}
	FUNC1(msg);
}