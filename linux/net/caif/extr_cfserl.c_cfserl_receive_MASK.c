#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_3__ {TYPE_2__* up; } ;
struct cfserl {int /*<<< orphan*/  sync; scalar_t__ usestx; TYPE_1__ layer; struct cfpkt* incomplete_frm; } ;
struct cfpkt {int dummy; } ;
struct cflayer {int dummy; } ;
struct TYPE_4__ {int (* receive ) (TYPE_2__*,struct cfpkt*) ;} ;

/* Variables and functions */
 scalar_t__ CFSERL_STX ; 
 int EILSEQ ; 
 int ENOMEM ; 
 int EPROTO ; 
 int SERIAL_MAX_FRAMESIZE ; 
 int SERIAL_MINIUM_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*,scalar_t__*,int) ; 
 void* FUNC2 (struct cfpkt*,struct cfpkt*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfpkt*,scalar_t__*,int) ; 
 int FUNC5 (struct cfpkt*) ; 
 scalar_t__ FUNC6 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfpkt*,int*,int) ; 
 struct cfpkt* FUNC8 (struct cfpkt*,int) ; 
 struct cfserl* FUNC9 (struct cflayer*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC14(struct cflayer *l, struct cfpkt *newpkt)
{
	struct cfserl *layr = FUNC9(l);
	u16 pkt_len;
	struct cfpkt *pkt = NULL;
	struct cfpkt *tail_pkt = NULL;
	u8 tmp8;
	u16 tmp;
	u8 stx = CFSERL_STX;
	int ret;
	u16 expectlen = 0;

	FUNC0(newpkt != NULL);
	FUNC11(&layr->sync);

	if (layr->incomplete_frm != NULL) {
		layr->incomplete_frm =
		    FUNC2(layr->incomplete_frm, newpkt, expectlen);
		pkt = layr->incomplete_frm;
		if (pkt == NULL) {
			FUNC12(&layr->sync);
			return -ENOMEM;
		}
	} else {
		pkt = newpkt;
	}
	layr->incomplete_frm = NULL;

	do {
		/* Search for STX at start of pkt if STX is used */
		if (layr->usestx) {
			FUNC4(pkt, &tmp8, 1);
			if (tmp8 != CFSERL_STX) {
				while (FUNC6(pkt)
				       && tmp8 != CFSERL_STX) {
					FUNC4(pkt, &tmp8, 1);
				}
				if (!FUNC6(pkt)) {
					FUNC3(pkt);
					layr->incomplete_frm = NULL;
					FUNC12(&layr->sync);
					return -EPROTO;
				}
			}
		}

		pkt_len = FUNC5(pkt);

		/*
		 *  pkt_len is the accumulated length of the packet data
		 *  we have received so far.
		 *  Exit if frame doesn't hold length.
		 */

		if (pkt_len < 2) {
			if (layr->usestx)
				FUNC1(pkt, &stx, 1);
			layr->incomplete_frm = pkt;
			FUNC12(&layr->sync);
			return 0;
		}

		/*
		 *  Find length of frame.
		 *  expectlen is the length we need for a full frame.
		 */
		FUNC7(pkt, &tmp, 2);
		expectlen = FUNC10(tmp) + 2;
		/*
		 * Frame error handling
		 */
		if (expectlen < SERIAL_MINIUM_PACKET_SIZE
		    || expectlen > SERIAL_MAX_FRAMESIZE) {
			if (!layr->usestx) {
				if (pkt != NULL)
					FUNC3(pkt);
				layr->incomplete_frm = NULL;
				expectlen = 0;
				FUNC12(&layr->sync);
				return -EPROTO;
			}
			continue;
		}

		if (pkt_len < expectlen) {
			/* Too little received data */
			if (layr->usestx)
				FUNC1(pkt, &stx, 1);
			layr->incomplete_frm = pkt;
			FUNC12(&layr->sync);
			return 0;
		}

		/*
		 * Enough data for at least one frame.
		 * Split the frame, if too long
		 */
		if (pkt_len > expectlen)
			tail_pkt = FUNC8(pkt, expectlen);
		else
			tail_pkt = NULL;

		/* Send the first part of packet upwards.*/
		FUNC12(&layr->sync);
		ret = layr->layer.up->receive(layr->layer.up, pkt);
		FUNC11(&layr->sync);
		if (ret == -EILSEQ) {
			if (layr->usestx) {
				if (tail_pkt != NULL)
					pkt = FUNC2(pkt, tail_pkt, 0);
				/* Start search for next STX if frame failed */
				continue;
			} else {
				FUNC3(pkt);
				pkt = NULL;
			}
		}

		pkt = tail_pkt;

	} while (pkt != NULL);

	FUNC12(&layr->sync);
	return 0;
}