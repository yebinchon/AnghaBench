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
struct pid {int dummy; } ;
typedef  int /*<<< orphan*/  pvnr ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_REPLACE ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct pid*) ; 

__attribute__((used)) static int FUNC3(struct pid *pid)
{
	pid_t pvnr;
	struct sk_buff *skb;

	pvnr = FUNC2(pid);
	skb = FUNC0(0, AUDIT_REPLACE, 0, 0, &pvnr, sizeof(pvnr));
	if (!skb)
		return -ENOMEM;
	return FUNC1(skb);
}