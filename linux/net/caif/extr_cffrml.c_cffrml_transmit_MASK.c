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
typedef  int /*<<< orphan*/  u16 ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_1__* dn; } ;
struct cffrml {scalar_t__ dofcs; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int hdr_len; } ;
struct TYPE_3__ {int (* transmit ) (TYPE_1__*,struct cfpkt*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int EPROTO ; 
 int /*<<< orphan*/  cffrml_checksum ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfpkt*) ; 
 scalar_t__ FUNC3 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfpkt*) ; 
 TYPE_2__* FUNC5 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfpkt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cfpkt*,int) ; 
 struct cffrml* FUNC8 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (TYPE_1__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC12(struct cflayer *layr, struct cfpkt *pkt)
{
	u16 chks;
	u16 len;
	__le16 data;

	struct cffrml *this = FUNC8(layr);
	if (this->dofcs) {
		chks = FUNC6(pkt, cffrml_checksum, 0xffff);
		data = FUNC9(chks);
		FUNC1(pkt, &data, 2);
	} else {
		FUNC7(pkt, 2);
	}
	len = FUNC4(pkt);
	data = FUNC9(len);
	FUNC0(pkt, &data, 2);
	FUNC5(pkt)->hdr_len += 2;
	if (FUNC3(pkt)) {
		FUNC10("Packet is erroneous!\n");
		FUNC2(pkt);
		return -EPROTO;
	}

	if (layr->dn == NULL) {
		FUNC2(pkt);
		return -ENODEV;

	}
	return layr->dn->transmit(layr->dn, pkt);
}