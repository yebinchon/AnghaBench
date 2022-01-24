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
typedef  size_t u32 ;
struct vport_portids {int n_ids; scalar_t__* ids; int /*<<< orphan*/  rn_ids; } ;
struct vport {int /*<<< orphan*/  upcall_portids; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 struct vport_portids* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct sk_buff*) ; 

u32 FUNC3(const struct vport *vport, struct sk_buff *skb)
{
	struct vport_portids *ids;
	u32 ids_index;
	u32 hash;

	ids = FUNC0(vport->upcall_portids);

	if (ids->n_ids == 1 && ids->ids[0] == 0)
		return 0;

	hash = FUNC2(skb);
	ids_index = hash - ids->n_ids * FUNC1(hash, ids->rn_ids);
	return ids->ids[ids_index];
}