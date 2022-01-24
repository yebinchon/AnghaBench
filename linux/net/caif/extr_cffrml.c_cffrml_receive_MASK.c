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
typedef  int u16 ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_1__* up; } ;
struct cffrml {scalar_t__ dofcs; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;} ;

/* Variables and functions */
 int EILSEQ ; 
 int EINVAL ; 
 int EPROTO ; 
 int /*<<< orphan*/  cffrml_checksum ; 
 int /*<<< orphan*/  cffrml_rcv_checsum_error ; 
 int /*<<< orphan*/  cffrml_rcv_error ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*) ; 
 scalar_t__ FUNC2 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfpkt*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfpkt*,int*,int) ; 
 int FUNC5 (struct cfpkt*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct cfpkt*,int) ; 
 struct cffrml* FUNC7 (struct cflayer*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int FUNC11 (TYPE_1__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC12(struct cflayer *layr, struct cfpkt *pkt)
{
	u16 tmp;
	u16 len;
	u16 hdrchks;
	int pktchks;
	struct cffrml *this;
	this = FUNC7(layr);

	FUNC3(pkt, &tmp, 2);
	len = FUNC8(tmp);

	/* Subtract for FCS on length if FCS is not used. */
	if (!this->dofcs)
		len -= 2;

	if (FUNC6(pkt, len) < 0) {
		++cffrml_rcv_error;
		FUNC9("Framing length error (%d)\n", len);
		FUNC1(pkt);
		return -EPROTO;
	}
	/*
	 * Don't do extract if FCS is false, rather do setlen - then we don't
	 * get a cache-miss.
	 */
	if (this->dofcs) {
		FUNC4(pkt, &tmp, 2);
		hdrchks = FUNC8(tmp);
		pktchks = FUNC5(pkt, cffrml_checksum, 0xffff);
		if (pktchks != hdrchks) {
			FUNC0(pkt, &tmp, 2);
			++cffrml_rcv_error;
			++cffrml_rcv_checsum_error;
			FUNC10("Frame checksum error (0x%x != 0x%x)\n",
				hdrchks, pktchks);
			return -EILSEQ;
		}
	}
	if (FUNC2(pkt)) {
		++cffrml_rcv_error;
		FUNC9("Packet is erroneous!\n");
		FUNC1(pkt);
		return -EPROTO;
	}

	if (layr->up == NULL) {
		FUNC9("Layr up is missing!\n");
		FUNC1(pkt);
		return -EINVAL;
	}

	return layr->up->receive(layr->up, pkt);
}