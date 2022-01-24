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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sock_diag_mutex ; 
 int /*<<< orphan*/  sock_diag_rcv_msg ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	FUNC0(&sock_diag_mutex);
	FUNC2(skb, &sock_diag_rcv_msg);
	FUNC1(&sock_diag_mutex);
}