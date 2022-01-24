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
struct netlbl_unlhsh_iface {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  addr4_list; } ;
struct netlbl_unlhsh_addr4 {int /*<<< orphan*/  secid; } ;
struct netlbl_audit {int dummy; } ;
struct netlbl_af4list {int dummy; } ;
struct net_device {int /*<<< orphan*/ * name; } ;
struct net {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_UNLBL_STCDEL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,...) ; 
 struct net_device* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct netlbl_unlhsh_addr4*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netlbl_af4list* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct audit_buffer* FUNC7 (int /*<<< orphan*/ ,struct netlbl_audit*) ; 
 struct netlbl_unlhsh_addr4* FUNC8 (struct netlbl_af4list*) ; 
 int /*<<< orphan*/  netlbl_unlhsh_lock ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net *net,
				      struct netlbl_unlhsh_iface *iface,
				      const struct in_addr *addr,
				      const struct in_addr *mask,
				      struct netlbl_audit *audit_info)
{
	struct netlbl_af4list *list_entry;
	struct netlbl_unlhsh_addr4 *entry;
	struct audit_buffer *audit_buf;
	struct net_device *dev;
	char *secctx;
	u32 secctx_len;

	FUNC11(&netlbl_unlhsh_lock);
	list_entry = FUNC6(addr->s_addr, mask->s_addr,
					   &iface->addr4_list);
	FUNC12(&netlbl_unlhsh_lock);
	if (list_entry != NULL)
		entry = FUNC8(list_entry);
	else
		entry = NULL;

	audit_buf = FUNC7(AUDIT_MAC_UNLBL_STCDEL,
					      audit_info);
	if (audit_buf != NULL) {
		dev = FUNC2(net, iface->ifindex);
		FUNC5(audit_buf, 1,
					  (dev != NULL ? dev->name : NULL),
					  addr->s_addr, mask->s_addr);
		if (dev != NULL)
			FUNC3(dev);
		if (entry != NULL &&
		    FUNC10(entry->secid,
					     &secctx, &secctx_len) == 0) {
			FUNC1(audit_buf, " sec_obj=%s", secctx);
			FUNC9(secctx, secctx_len);
		}
		FUNC1(audit_buf, " res=%u", entry != NULL ? 1 : 0);
		FUNC0(audit_buf);
	}

	if (entry == NULL)
		return -ENOENT;

	FUNC4(entry, rcu);
	return 0;
}