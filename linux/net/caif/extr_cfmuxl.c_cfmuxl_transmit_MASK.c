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
typedef  int /*<<< orphan*/  u8 ;
struct cfpkt {int dummy; } ;
struct cfmuxl {int dummy; } ;
struct cflayer {int (* transmit ) (struct cflayer*,struct cfpkt*) ;} ;
struct caif_payload_info {int hdr_len; int /*<<< orphan*/  channel_id; TYPE_1__* dev_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC1 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfpkt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfpkt*) ; 
 struct caif_payload_info* FUNC5 (struct cfpkt*) ; 
 struct cfmuxl* FUNC6 (struct cflayer*) ; 
 struct cflayer* FUNC7 (struct cfmuxl*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct cflayer*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC12(struct cflayer *layr, struct cfpkt *pkt)
{
	struct cfmuxl *muxl = FUNC6(layr);
	int err;
	u8 linkid;
	struct cflayer *dn;
	struct caif_payload_info *info = FUNC5(pkt);
	FUNC0(!info);

	FUNC9();

	dn = FUNC7(muxl, info->dev_info);
	if (dn == NULL) {
		FUNC8("Send data on unknown phy ID = %d (0x%x)\n",
			info->dev_info->id, info->dev_info->id);
		FUNC10();
		FUNC4(pkt);
		return -ENOTCONN;
	}

	info->hdr_len += 1;
	linkid = info->channel_id;
	FUNC3(pkt, &linkid, 1);

	/* We can't hold rcu_lock during receive, so take a ref count instead */
	FUNC1(dn);

	FUNC10();

	err = dn->transmit(dn, pkt);

	FUNC2(dn);
	return err;
}