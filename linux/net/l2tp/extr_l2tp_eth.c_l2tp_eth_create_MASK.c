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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  max_mtu; scalar_t__ min_mtu; } ;
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct l2tp_session_cfg {int /*<<< orphan*/  ifname; } ;
struct l2tp_session {char* ifname; int /*<<< orphan*/  show; int /*<<< orphan*/  session_close; int /*<<< orphan*/  recv_skb; } ;
struct l2tp_eth_sess {int /*<<< orphan*/  dev; } ;
struct l2tp_eth {struct l2tp_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_L2TP_DEBUGFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_MAX_MTU ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct l2tp_session*) ; 
 int /*<<< orphan*/  L2TP_ETH_DEV_NAME ; 
 unsigned char NET_NAME_ENUM ; 
 unsigned char NET_NAME_USER ; 
 int FUNC2 (struct l2tp_session*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (int,char*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2tp_tunnel*,struct l2tp_session*,struct net_device*) ; 
 int /*<<< orphan*/  l2tp_eth_delete ; 
 int /*<<< orphan*/  l2tp_eth_dev_recv ; 
 int /*<<< orphan*/  l2tp_eth_dev_setup ; 
 int /*<<< orphan*/  l2tp_eth_show ; 
 struct l2tp_session* FUNC9 (int,struct l2tp_tunnel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct l2tp_session_cfg*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC12 (struct l2tp_session*) ; 
 struct l2tp_eth_sess* FUNC13 (struct l2tp_session*) ; 
 int FUNC14 (struct l2tp_session*,struct l2tp_tunnel*) ; 
 struct l2tp_eth* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC22(struct net *net, struct l2tp_tunnel *tunnel,
			   u32 session_id, u32 peer_session_id,
			   struct l2tp_session_cfg *cfg)
{
	unsigned char name_assign_type;
	struct net_device *dev;
	char name[IFNAMSIZ];
	struct l2tp_session *session;
	struct l2tp_eth *priv;
	struct l2tp_eth_sess *spriv;
	int rc;

	if (cfg->ifname) {
		FUNC21(name, cfg->ifname, IFNAMSIZ);
		name_assign_type = NET_NAME_USER;
	} else {
		FUNC20(name, L2TP_ETH_DEV_NAME);
		name_assign_type = NET_NAME_ENUM;
	}

	session = FUNC9(sizeof(*spriv), tunnel, session_id,
				      peer_session_id, cfg);
	if (FUNC1(session)) {
		rc = FUNC2(session);
		goto err;
	}

	dev = FUNC4(sizeof(*priv), name, name_assign_type,
			   l2tp_eth_dev_setup);
	if (!dev) {
		rc = -ENOMEM;
		goto err_sess;
	}

	FUNC5(dev, net);
	dev->min_mtu = 0;
	dev->max_mtu = ETH_MAX_MTU;
	FUNC8(tunnel, session, dev);

	priv = FUNC15(dev);
	priv->session = session;

	session->recv_skb = l2tp_eth_dev_recv;
	session->session_close = l2tp_eth_delete;
	if (FUNC0(CONFIG_L2TP_DEBUGFS))
		session->show = l2tp_eth_show;

	spriv = FUNC13(session);

	FUNC12(session);

	FUNC18();

	/* Register both device and session while holding the rtnl lock. This
	 * ensures that l2tp_eth_delete() will see that there's a device to
	 * unregister, even if it happened to run before we assign spriv->dev.
	 */
	rc = FUNC14(session, tunnel);
	if (rc < 0) {
		FUNC19();
		goto err_sess_dev;
	}

	rc = FUNC17(dev);
	if (rc < 0) {
		FUNC19();
		FUNC11(session);
		FUNC10(session);
		FUNC6(dev);

		return rc;
	}

	FUNC21(session->ifname, dev->name, IFNAMSIZ);
	FUNC16(spriv->dev, dev);

	FUNC19();

	FUNC10(session);

	FUNC3(THIS_MODULE);

	return 0;

err_sess_dev:
	FUNC10(session);
	FUNC6(dev);
err_sess:
	FUNC7(session);
err:
	return rc;
}