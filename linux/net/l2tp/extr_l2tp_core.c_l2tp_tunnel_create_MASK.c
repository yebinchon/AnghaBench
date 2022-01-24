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
typedef  int u32 ;
struct net {int dummy; } ;
struct l2tp_tunnel_cfg {int encap; int /*<<< orphan*/  debug; } ;
struct l2tp_tunnel {int version; int tunnel_id; int peer_tunnel_id; int acpt_newsess; int encap; int fd; int /*<<< orphan*/  list; int /*<<< orphan*/  del_work; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  debug; int /*<<< orphan*/  hlist_lock; int /*<<< orphan*/ * name; int /*<<< orphan*/  magic; } ;
typedef  enum l2tp_encap_type { ____Placeholder_l2tp_encap_type } l2tp_encap_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2TP_DEFAULT_DEBUG_FLAGS ; 
 int L2TP_ENCAPTYPE_UDP ; 
 int /*<<< orphan*/  L2TP_TUNNEL_MAGIC ; 
 struct l2tp_tunnel* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2tp_tunnel_del_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC6(struct net *net, int fd, int version, u32 tunnel_id, u32 peer_tunnel_id, struct l2tp_tunnel_cfg *cfg, struct l2tp_tunnel **tunnelp)
{
	struct l2tp_tunnel *tunnel = NULL;
	int err;
	enum l2tp_encap_type encap = L2TP_ENCAPTYPE_UDP;

	if (cfg != NULL)
		encap = cfg->encap;

	tunnel = FUNC2(sizeof(struct l2tp_tunnel), GFP_KERNEL);
	if (tunnel == NULL) {
		err = -ENOMEM;
		goto err;
	}

	tunnel->version = version;
	tunnel->tunnel_id = tunnel_id;
	tunnel->peer_tunnel_id = peer_tunnel_id;
	tunnel->debug = L2TP_DEFAULT_DEBUG_FLAGS;

	tunnel->magic = L2TP_TUNNEL_MAGIC;
	FUNC5(&tunnel->name[0], "tunl %u", tunnel_id);
	FUNC4(&tunnel->hlist_lock);
	tunnel->acpt_newsess = true;

	if (cfg != NULL)
		tunnel->debug = cfg->debug;

	tunnel->encap = encap;

	FUNC3(&tunnel->ref_count, 1);
	tunnel->fd = fd;

	/* Init delete workqueue struct */
	FUNC1(&tunnel->del_work, l2tp_tunnel_del_work);

	FUNC0(&tunnel->list);

	err = 0;
err:
	if (tunnelp)
		*tunnelp = tunnel;

	return err;
}