#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct TYPE_17__ {int /*<<< orphan*/  peer_addr; } ;
struct ceph_mon_client {TYPE_8__* client; int /*<<< orphan*/  mutex; TYPE_7__ con; int /*<<< orphan*/  cur_mon; TYPE_9__* auth; TYPE_3__* m_auth; scalar_t__ pending_auth; } ;
struct TYPE_19__ {int /*<<< orphan*/  global_id; } ;
struct TYPE_14__ {int /*<<< orphan*/  num; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {TYPE_4__ name; } ;
struct TYPE_16__ {TYPE_5__ inst; } ;
struct TYPE_18__ {int auth_err; int /*<<< orphan*/  auth_wq; TYPE_6__ msgr; } ;
struct TYPE_12__ {int /*<<< orphan*/  iov_base; } ;
struct TYPE_13__ {int /*<<< orphan*/  front_alloc_len; TYPE_2__ front; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_ENTITY_TYPE_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mon_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mon_client*) ; 
 int FUNC3 (TYPE_9__*) ; 
 int FUNC4 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ceph_mon_client *monc,
			      struct ceph_msg *msg)
{
	int ret;
	int was_auth = 0;

	FUNC9(&monc->mutex);
	was_auth = FUNC3(monc->auth);
	monc->pending_auth = 0;
	ret = FUNC4(monc->auth, msg->front.iov_base,
				     msg->front.iov_len,
				     monc->m_auth->front.iov_base,
				     monc->m_auth->front_alloc_len);
	if (ret > 0) {
		FUNC1(monc, ret);
		goto out;
	}

	FUNC8(monc);

	if (ret < 0) {
		monc->client->auth_err = ret;
	} else if (!was_auth && FUNC3(monc->auth)) {
		FUNC7("authenticated, starting session\n");

		monc->client->msgr.inst.name.type = CEPH_ENTITY_TYPE_CLIENT;
		monc->client->msgr.inst.name.num =
					FUNC6(monc->auth->global_id);

		FUNC2(monc);
		FUNC0(monc);

		FUNC11("mon%d %s session established\n", monc->cur_mon,
			FUNC5(&monc->con.peer_addr));
	}

out:
	FUNC10(&monc->mutex);
	if (monc->client->auth_err < 0)
		FUNC12(&monc->client->auth_wq);
}