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
struct garp_attr_hdr {unsigned int len; int event; int /*<<< orphan*/  data; } ;
struct garp_attr {int dlen; int /*<<< orphan*/  data; scalar_t__ type; } ;
struct garp_applicant {int /*<<< orphan*/  pdu; } ;
typedef  enum garp_attr_event { ____Placeholder_garp_attr_event } garp_attr_event ;
struct TYPE_2__ {scalar_t__ cur_type; } ;

/* Variables and functions */
 struct garp_attr_hdr* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct garp_applicant*) ; 
 scalar_t__ FUNC3 (struct garp_applicant*,scalar_t__) ; 
 int FUNC4 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct garp_applicant *app,
				const struct garp_attr *attr,
				enum garp_attr_event event)
{
	struct garp_attr_hdr *ga;
	unsigned int len;
	int err;
again:
	if (!app->pdu) {
		err = FUNC4(app);
		if (err < 0)
			return err;
	}

	if (FUNC1(app->pdu)->cur_type != attr->type) {
		if (FUNC1(app->pdu)->cur_type &&
		    FUNC2(app) < 0)
			goto queue;
		if (FUNC3(app, attr->type) < 0)
			goto queue;
	}

	len = sizeof(*ga) + attr->dlen;
	if (FUNC7(app->pdu) < len)
		goto queue;
	ga = FUNC0(app->pdu, len);
	ga->len   = len;
	ga->event = event;
	FUNC6(ga->data, attr->data, attr->dlen);
	return 0;

queue:
	FUNC5(app);
	goto again;
}