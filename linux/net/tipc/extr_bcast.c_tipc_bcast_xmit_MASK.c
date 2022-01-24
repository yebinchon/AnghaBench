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
typedef  int u16 ;
struct tipc_link {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ELINKCONG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 struct tipc_link* FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct sk_buff_head*) ; 
 scalar_t__ FUNC6 (struct tipc_link*) ; 
 int FUNC7 (struct tipc_link*,struct sk_buff_head*,struct sk_buff_head*) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct sk_buff_head *pkts,
			   u16 *cong_link_cnt)
{
	struct tipc_link *l = FUNC2(net);
	struct sk_buff_head xmitq;
	int rc = 0;

	FUNC0(&xmitq);
	FUNC3(net);
	if (FUNC6(l))
		rc = FUNC7(l, pkts, &xmitq);
	FUNC4(net);
	FUNC5(net, &xmitq);
	FUNC1(pkts);
	if (rc == -ELINKCONG) {
		*cong_link_cnt = 1;
		rc = 0;
	}
	return rc;
}