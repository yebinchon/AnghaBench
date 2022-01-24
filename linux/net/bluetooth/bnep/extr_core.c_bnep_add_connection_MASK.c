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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct socket {int /*<<< orphan*/  sk; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/ ** dev_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  msg_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** h_dest; int /*<<< orphan*/ ** h_source; } ;
struct bnep_session {scalar_t__ state; int flags; long long mc_filter; int /*<<< orphan*/  task; TYPE_3__ msg; int /*<<< orphan*/  role; struct socket* sock; struct net_device* dev; TYPE_2__ eh; } ;
struct bnep_connadd_req {int flags; char* device; int /*<<< orphan*/  role; } ;
struct TYPE_8__ {TYPE_1__* chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNEP_SETUP_RESPONSE ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EBADFD ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct bnep_session* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bnep_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnep_session*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC10 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct bnep_session*) ; 
 int /*<<< orphan*/  bnep_net_setup ; 
 int /*<<< orphan*/  bnep_session ; 
 int /*<<< orphan*/  bnep_session_sem ; 
 int /*<<< orphan*/  FUNC13 (struct bnep_session*) ; 
 int /*<<< orphan*/  bnep_type ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct bnep_session*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*) ; 
 TYPE_4__* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 struct bnep_session* FUNC21 (struct net_device*) ; 
 int FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

int FUNC26(struct bnep_connadd_req *req, struct socket *sock)
{
	u32 valid_flags = FUNC0(BNEP_SETUP_RESPONSE);
	struct net_device *dev;
	struct bnep_session *s, *ss;
	u8 dst[ETH_ALEN], src[ETH_ALEN];
	int err;

	FUNC1("");

	if (!FUNC17(sock))
		return -EBADFD;

	if (req->flags & ~valid_flags)
		return -EINVAL;

	FUNC11((void *) dst, &FUNC18(sock->sk)->chan->dst);
	FUNC11((void *) src, &FUNC18(sock->sk)->chan->src);

	/* session struct allocated as private part of net_device */
	dev = FUNC10(sizeof(struct bnep_session),
			   (*req->device) ? req->device : "bnep%d",
			   NET_NAME_UNKNOWN,
			   bnep_net_setup);
	if (!dev)
		return -ENOMEM;

	FUNC14(&bnep_session_sem);

	ss = FUNC6(dst);
	if (ss && ss->state == BT_CONNECTED) {
		err = -EEXIST;
		goto failed;
	}

	s = FUNC21(dev);

	/* This is rx header therefore addresses are swapped.
	 * ie. eh.h_dest is our local address. */
	FUNC19(s->eh.h_dest,   &src, ETH_ALEN);
	FUNC19(s->eh.h_source, &dst, ETH_ALEN);
	FUNC19(dev->dev_addr, s->eh.h_dest, ETH_ALEN);

	s->dev   = dev;
	s->sock  = sock;
	s->role  = req->role;
	s->state = BT_CONNECTED;
	s->flags = req->flags;

	s->msg.msg_flags = MSG_NOSIGNAL;

#ifdef CONFIG_BT_BNEP_MC_FILTER
	/* Set default mc filter to not filter out any mc addresses
	 * as defined in the BNEP specification (revision 0.95a)
	 * http://grouper.ieee.org/groups/802/15/Bluetooth/BNEP.pdf
	 */
	s->mc_filter = ~0LL;
#endif

#ifdef CONFIG_BT_BNEP_PROTO_FILTER
	/* Set default protocol filter */
	bnep_set_default_proto_filter(s);
#endif

	FUNC4(dev, FUNC12(s));
	FUNC5(dev, &bnep_type);

	err = FUNC22(dev);
	if (err)
		goto failed;

	FUNC7(s);

	FUNC9(THIS_MODULE);
	s->task = FUNC16(bnep_session, s, "kbnepd %s", dev->name);
	if (FUNC2(s->task)) {
		/* Session thread start failed, gotta cleanup. */
		FUNC20(THIS_MODULE);
		FUNC24(dev);
		FUNC8(s);
		err = FUNC3(s->task);
		goto failed;
	}

	FUNC25(&bnep_session_sem);
	FUNC23(req->device, dev->name);
	return 0;

failed:
	FUNC25(&bnep_session_sem);
	FUNC15(dev);
	return err;
}