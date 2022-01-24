#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct mrp_attr {scalar_t__ type; scalar_t__ len; int /*<<< orphan*/  value; } ;
struct mrp_applicant {int /*<<< orphan*/  pdu; } ;
typedef  enum mrp_vecattr_event { ____Placeholder_mrp_vecattr_event } mrp_vecattr_event ;
struct TYPE_6__ {int /*<<< orphan*/  attrvalue; TYPE_2__* vah; TYPE_1__* mh; } ;
struct TYPE_5__ {int /*<<< orphan*/  lenflags; } ;
struct TYPE_4__ {scalar_t__ attrtype; scalar_t__ attrlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __MRP_VECATTR_EVENT_MAX ; 
 int* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mrp_applicant*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct mrp_applicant*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC11 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct mrp_applicant *app,
					const struct mrp_attr *attr,
					enum mrp_vecattr_event vaevent)
{
	u16 len, pos;
	u8 *vaevents;
	int err;
again:
	if (!app->pdu) {
		err = FUNC10(app);
		if (err < 0)
			return err;
	}

	/* If there is no Message header in the PDU, or the Message header is
	 * for a different attribute type, add an EndMark (if necessary) and a
	 * new Message header to the PDU.
	 */
	if (!FUNC7(app->pdu)->mh ||
	    FUNC7(app->pdu)->mh->attrtype != attr->type ||
	    FUNC7(app->pdu)->mh->attrlen != attr->len) {
		if (FUNC8(app, attr->type, attr->len) < 0)
			goto queue;
	}

	/* If there is no VectorAttribute header for this Message in the PDU,
	 * or this attribute's value does not sequentially follow the previous
	 * attribute's value, add a new VectorAttribute header to the PDU.
	 */
	if (!FUNC7(app->pdu)->vah ||
	    FUNC5(FUNC7(app->pdu)->attrvalue, attr->value, attr->len)) {
		if (FUNC9(app, attr->value, attr->len) < 0)
			goto queue;
	}

	len = FUNC2(FUNC4(&FUNC7(app->pdu)->vah->lenflags));
	pos = len % 3;

	/* Events are packed into Vectors in the PDU, three to a byte. Add a
	 * byte to the end of the Vector if necessary.
	 */
	if (!pos) {
		if (FUNC14(app->pdu) < sizeof(u8))
			goto queue;
		vaevents = FUNC1(app->pdu, sizeof(u8));
	} else {
		vaevents = (u8 *)(FUNC13(app->pdu) - sizeof(u8));
	}

	switch (pos) {
	case 0:
		*vaevents = vaevent * (__MRP_VECATTR_EVENT_MAX *
				       __MRP_VECATTR_EVENT_MAX);
		break;
	case 1:
		*vaevents += vaevent * __MRP_VECATTR_EVENT_MAX;
		break;
	case 2:
		*vaevents += vaevent;
		break;
	default:
		FUNC0(1);
	}

	/* Increment the length of the VectorAttribute in the PDU, as well as
	 * the value of the next attribute that would continue its Vector.
	 */
	FUNC12(FUNC3(++len), &FUNC7(app->pdu)->vah->lenflags);
	FUNC6(FUNC7(app->pdu)->attrvalue, attr->len);

	return 0;

queue:
	FUNC11(app);
	goto again;
}