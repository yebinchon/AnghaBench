#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct datalink_proto {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  lsap; } ;
struct TYPE_5__ {TYPE_1__ laddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 TYPE_2__* snap_sap ; 

__attribute__((used)) static int FUNC3(struct datalink_proto *dl,
			struct sk_buff *skb, u8 *dest)
{
	FUNC1(FUNC2(skb, 5), dl->type, 5);
	FUNC0(snap_sap, skb, dest, snap_sap->laddr.lsap);
	return 0;
}