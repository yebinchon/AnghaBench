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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct packet_sock {TYPE_1__* fanout; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_DIAG_FANOUT ; 
 int /*<<< orphan*/  fanout_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct packet_sock *po, struct sk_buff *nlskb)
{
	int ret = 0;

	FUNC0(&fanout_mutex);
	if (po->fanout) {
		u32 val;

		val = (u32)po->fanout->id | ((u32)po->fanout->type << 16);
		ret = FUNC2(nlskb, PACKET_DIAG_FANOUT, val);
	}
	FUNC1(&fanout_mutex);

	return ret;
}