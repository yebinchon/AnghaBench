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
struct page {int dummy; } ;
struct o2nm_node {int /*<<< orphan*/  nd_item; } ;
struct o2net_sock_container {struct page* sc_page; int /*<<< orphan*/  sc_idle_timeout; int /*<<< orphan*/  sc_keepalive_work; int /*<<< orphan*/  sc_shutdown_work; int /*<<< orphan*/  sc_rx_work; int /*<<< orphan*/  sc_connect_work; struct o2nm_node* sc_node; int /*<<< orphan*/  sc_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct o2net_sock_container* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  o2net_idle_timer ; 
 int /*<<< orphan*/  o2net_rx_until_empty ; 
 int /*<<< orphan*/  o2net_sc_connect_completed ; 
 int /*<<< orphan*/  o2net_sc_send_keep_req ; 
 int /*<<< orphan*/  o2net_shutdown_sc ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct o2net_sock_container*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct o2net_sock_container *FUNC14(struct o2nm_node *node)
{
	struct o2net_sock_container *sc, *ret = NULL;
	struct page *page = NULL;
	int status = 0;

	page = FUNC3(GFP_NOFS);
	sc = FUNC6(sizeof(*sc), GFP_NOFS);
	if (sc == NULL || page == NULL)
		goto out;

	FUNC5(&sc->sc_kref);
	FUNC10(node);
	sc->sc_node = node;

	/* pin the node item of the remote node */
	status = FUNC9(&node->nd_item);
	if (status) {
		FUNC7(status);
		FUNC11(node);
		goto out;
	}
	FUNC1(&sc->sc_connect_work, o2net_sc_connect_completed);
	FUNC1(&sc->sc_rx_work, o2net_rx_until_empty);
	FUNC1(&sc->sc_shutdown_work, o2net_shutdown_sc);
	FUNC0(&sc->sc_keepalive_work, o2net_sc_send_keep_req);

	FUNC13(&sc->sc_idle_timeout, o2net_idle_timer, 0);

	FUNC12(sc, "alloced\n");

	ret = sc;
	sc->sc_page = page;
	FUNC8(sc);
	sc = NULL;
	page = NULL;

out:
	if (page)
		FUNC2(page);
	FUNC4(sc);

	return ret;
}