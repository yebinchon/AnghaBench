#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_5__* up; } ;
struct TYPE_8__ {TYPE_2__ dev_info; TYPE_1__ layer; } ;
struct cfrfml {scalar_t__ pdu_size; int /*<<< orphan*/  sync; TYPE_3__ serv; struct cfpkt* incomplete_frm; scalar_t__ seghead; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_4__* up; int /*<<< orphan*/ * receive; } ;
struct TYPE_10__ {int (* receive ) (TYPE_5__*,struct cfpkt*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* ctrlcmd ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND ; 
 int EAGAIN ; 
 int EIO ; 
 int EPROTO ; 
 scalar_t__ RFM_HEAD_SIZE ; 
 int RFM_SEGMENTATION_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*) ; 
 scalar_t__ FUNC2 (struct cfpkt*) ; 
 scalar_t__ FUNC3 (struct cfpkt*,int*,int) ; 
 scalar_t__ FUNC4 (struct cfpkt*) ; 
 scalar_t__ FUNC5 (struct cfpkt*,scalar_t__,int) ; 
 struct cfrfml* FUNC6 (struct cflayer*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 struct cfpkt* FUNC9 (struct cfrfml*,int*,struct cfpkt*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_5__*,struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct cflayer *layr, struct cfpkt *pkt)
{
	u8 tmp;
	bool segmented;
	int err;
	u8 seghead[6];
	struct cfrfml *rfml;
	struct cfpkt *tmppkt = NULL;

	FUNC0(layr->up != NULL);
	FUNC0(layr->receive != NULL);
	rfml = FUNC6(layr);
	FUNC10(&rfml->sync);

	err = -EPROTO;
	if (FUNC3(pkt, &tmp, 1) < 0)
		goto out;
	segmented = tmp & RFM_SEGMENTATION_BIT;

	if (segmented) {
		if (rfml->incomplete_frm == NULL) {
			/* Initial Segment */
			if (FUNC5(pkt, rfml->seghead, 6) < 0)
				goto out;

			rfml->pdu_size = FUNC7(rfml->seghead+4);

			if (FUNC2(pkt))
				goto out;
			rfml->incomplete_frm = pkt;
			pkt = NULL;
		} else {

			tmppkt = FUNC9(rfml, seghead, pkt, &err);
			if (tmppkt == NULL)
				goto out;

			if (FUNC2(tmppkt))
				goto out;

			rfml->incomplete_frm = tmppkt;


			if (FUNC2(tmppkt))
				goto out;
		}
		err = 0;
		goto out;
	}

	if (rfml->incomplete_frm) {

		/* Last Segment */
		tmppkt = FUNC9(rfml, seghead, pkt, &err);
		if (tmppkt == NULL)
			goto out;

		if (FUNC2(tmppkt))
			goto out;

		rfml->incomplete_frm = NULL;
		pkt = tmppkt;
		tmppkt = NULL;

		/* Verify that length is correct */
		err = -EPROTO;
		if (rfml->pdu_size != FUNC4(pkt) - RFM_HEAD_SIZE + 1)
			goto out;
	}

	err = rfml->serv.layer.up->receive(rfml->serv.layer.up, pkt);

out:

	if (err != 0) {
		if (tmppkt)
			FUNC1(tmppkt);
		if (pkt)
			FUNC1(pkt);
		if (rfml->incomplete_frm)
			FUNC1(rfml->incomplete_frm);
		rfml->incomplete_frm = NULL;

		FUNC8("Connection error %d triggered on RFM link\n", err);

		/* Trigger connection error upon failure.*/
		layr->up->ctrlcmd(layr->up, CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND,
					rfml->serv.dev_info.id);
	}
	FUNC11(&rfml->sync);

	if (FUNC14(err == -EAGAIN))
		/* It is not possible to recover after drop of a fragment */
		err = -EIO;

	return err;
}