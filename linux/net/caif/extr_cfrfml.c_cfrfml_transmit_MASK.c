#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_2__ dev_info; } ;
struct cfrfml {scalar_t__ fragment_size; TYPE_4__ serv; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_3__* up; TYPE_1__* dn; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* ctrlcmd ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * transmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND ; 
 int EPROTO ; 
 int RFM_HEAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cfpkt*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfpkt*) ; 
 scalar_t__ FUNC3 (struct cfpkt*) ; 
 int FUNC4 (struct cfpkt*,int*,int) ; 
 struct cfpkt* FUNC5 (struct cfpkt*,scalar_t__) ; 
 int FUNC6 (struct cfrfml*,struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int*) ; 
 struct cfrfml* FUNC8 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct cflayer *layr, struct cfpkt *pkt)
{
	int err;
	u8 seg;
	u8 head[6];
	struct cfpkt *rearpkt = NULL;
	struct cfpkt *frontpkt = pkt;
	struct cfrfml *rfml = FUNC8(layr);

	FUNC0(layr->dn != NULL);
	FUNC0(layr->dn->transmit != NULL);

	if (!FUNC7(&rfml->serv, &err))
		goto out;

	err = -EPROTO;
	if (FUNC3(pkt) <= RFM_HEAD_SIZE-1)
		goto out;

	err = 0;
	if (FUNC3(pkt) > rfml->fragment_size + RFM_HEAD_SIZE)
		err = FUNC4(pkt, head, 6);

	if (err < 0)
		goto out;

	while (FUNC3(frontpkt) > rfml->fragment_size + RFM_HEAD_SIZE) {

		seg = 1;
		err = -EPROTO;

		if (FUNC1(frontpkt, &seg, 1) < 0)
			goto out;
		/*
		 * On OOM error cfpkt_split returns NULL.
		 *
		 * NOTE: Segmented pdu is not correctly aligned.
		 * This has negative performance impact.
		 */

		rearpkt = FUNC5(frontpkt, rfml->fragment_size);
		if (rearpkt == NULL)
			goto out;

		err = FUNC6(rfml, frontpkt);

		if (err != 0) {
			frontpkt = NULL;
			goto out;
		}

		frontpkt = rearpkt;
		rearpkt = NULL;

		err = -EPROTO;
		if (FUNC1(frontpkt, head, 6) < 0)
			goto out;

	}

	seg = 0;
	err = -EPROTO;

	if (FUNC1(frontpkt, &seg, 1) < 0)
		goto out;

	err = FUNC6(rfml, frontpkt);

	frontpkt = NULL;
out:

	if (err != 0) {
		FUNC9("Connection error %d triggered on RFM link\n", err);
		/* Trigger connection error upon failure.*/

		layr->up->ctrlcmd(layr->up, CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND,
					rfml->serv.dev_info.id);

		if (rearpkt)
			FUNC2(rearpkt);

		if (frontpkt)
			FUNC2(frontpkt);
	}

	return err;
}