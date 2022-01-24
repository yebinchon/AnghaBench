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
typedef  scalar_t__ u16 ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_cmd_arg {int* bytes; scalar_t__* words; int /*<<< orphan*/  type; } ;
struct ncsi_channel_vlan_filter {int n_vids; scalar_t__* vids; int /*<<< orphan*/  bitmap; } ;
struct ncsi_channel {int /*<<< orphan*/  lock; struct ncsi_channel_vlan_filter vlan_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCSI_PKT_CMD_SVF ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ncsi_dev_priv *ndp, struct ncsi_channel *nc,
			 struct ncsi_cmd_arg *nca)
{
	struct ncsi_channel_vlan_filter *ncf;
	unsigned long flags;
	void *bitmap;
	int index;
	u16 vid;

	ncf = &nc->vlan_filter;
	bitmap = &ncf->bitmap;

	FUNC2(&nc->lock, flags);
	index = FUNC1(bitmap, ncf->n_vids, 0);
	if (index >= ncf->n_vids) {
		FUNC3(&nc->lock, flags);
		return -1;
	}
	vid = ncf->vids[index];

	FUNC0(index, bitmap);
	ncf->vids[index] = 0;
	FUNC3(&nc->lock, flags);

	nca->type = NCSI_PKT_CMD_SVF;
	nca->words[1] = vid;
	/* HW filter index starts at 1 */
	nca->bytes[6] = index + 1;
	nca->bytes[7] = 0x00;
	return 0;
}