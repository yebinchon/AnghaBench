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

/* Variables and functions */
 int /*<<< orphan*/ * inet_rcv_compat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sock_diag_table_mutex ; 

void FUNC2(int (*fn)(struct sk_buff *skb, struct nlmsghdr *nlh))
{
	FUNC0(&sock_diag_table_mutex);
	inet_rcv_compat = NULL;
	FUNC1(&sock_diag_table_mutex);
}