#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, const struct nf_conn *ct)
{
	if (FUNC2(skb, CTA_USE, FUNC1(FUNC0(&ct->ct_general.use))))
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}