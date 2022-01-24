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
typedef  void* u8 ;
struct mrp_msg_hdr {void* attrlen; void* attrtype; } ;
struct mrp_applicant {int /*<<< orphan*/  pdu; } ;
struct TYPE_2__ {struct mrp_msg_hdr* mh; int /*<<< orphan*/ * vah; } ;

/* Variables and functions */
 struct mrp_msg_hdr* FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mrp_applicant*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mrp_applicant *app,
				  u8 attrtype, u8 attrlen)
{
	struct mrp_msg_hdr *mh;

	if (FUNC1(app->pdu)->mh) {
		if (FUNC2(app) < 0)
			return -1;
		FUNC1(app->pdu)->mh = NULL;
		FUNC1(app->pdu)->vah = NULL;
	}

	if (FUNC3(app->pdu) < sizeof(*mh))
		return -1;
	mh = FUNC0(app->pdu, sizeof(*mh));
	mh->attrtype = attrtype;
	mh->attrlen = attrlen;
	FUNC1(app->pdu)->mh = mh;
	return 0;
}