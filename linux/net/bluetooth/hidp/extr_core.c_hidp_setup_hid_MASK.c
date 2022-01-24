#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hidp_session {struct hid_device* rd_data; struct hid_device* hid; TYPE_5__* conn; TYPE_2__* ctrl_sock; int /*<<< orphan*/  rd_size; } ;
struct hidp_connadd_req {int /*<<< orphan*/  name; int /*<<< orphan*/  country; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  rd_size; int /*<<< orphan*/  rd_data; } ;
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct hid_device {int /*<<< orphan*/ * ll_driver; TYPE_3__ dev; int /*<<< orphan*/  uniq; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  country; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bus; struct hidp_session* driver_data; } ;
struct TYPE_12__ {TYPE_1__* chan; } ;
struct TYPE_11__ {TYPE_4__* hcon; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  sk; } ;
struct TYPE_7__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_BLUETOOTH ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_device*) ; 
 struct hid_device* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 scalar_t__ FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  hidp_hid_driver ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ) ; 
 struct hid_device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct hidp_session *session,
				const struct hidp_connadd_req *req)
{
	struct hid_device *hid;
	int err;

	session->rd_data = FUNC7(req->rd_data, req->rd_size);
	if (FUNC0(session->rd_data))
		return FUNC1(session->rd_data);

	session->rd_size = req->rd_size;

	hid = FUNC2();
	if (FUNC0(hid)) {
		err = FUNC1(hid);
		goto fault;
	}

	session->hid = hid;

	hid->driver_data = session;

	hid->bus     = BUS_BLUETOOTH;
	hid->vendor  = req->vendor;
	hid->product = req->product;
	hid->version = req->version;
	hid->country = req->country;

	FUNC9(hid->name, req->name, sizeof(hid->name));

	FUNC8(hid->phys, sizeof(hid->phys), "%pMR",
		 &FUNC6(session->ctrl_sock->sk)->chan->src);

	/* NOTE: Some device modules depend on the dst address being stored in
	 * uniq. Please be aware of this before making changes to this behavior.
	 */
	FUNC8(hid->uniq, sizeof(hid->uniq), "%pMR",
		 &FUNC6(session->ctrl_sock->sk)->chan->dst);

	hid->dev.parent = &session->conn->hcon->dev;
	hid->ll_driver = &hidp_hid_driver;

	/* True if device is blacklisted in drivers/hid/hid-quirks.c */
	if (FUNC4(hid)) {
		FUNC3(session->hid);
		session->hid = NULL;
		return -ENODEV;
	}

	return 0;

fault:
	FUNC5(session->rd_data);
	session->rd_data = NULL;

	return err;
}