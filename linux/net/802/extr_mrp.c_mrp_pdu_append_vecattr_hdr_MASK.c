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
typedef  scalar_t__ u8 ;
struct mrp_vecattr_hdr {int /*<<< orphan*/  firstattrvalue; int /*<<< orphan*/  lenflags; } ;
struct mrp_applicant {int /*<<< orphan*/  pdu; } ;
struct TYPE_2__ {int /*<<< orphan*/  attrvalue; struct mrp_vecattr_hdr* vah; } ;

/* Variables and functions */
 struct mrp_vecattr_hdr* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mrp_applicant *app,
				      const void *firstattrvalue, u8 attrlen)
{
	struct mrp_vecattr_hdr *vah;

	if (FUNC4(app->pdu) < sizeof(*vah) + attrlen)
		return -1;
	vah = FUNC0(app->pdu, sizeof(*vah) + attrlen);
	FUNC3(0, &vah->lenflags);
	FUNC1(vah->firstattrvalue, firstattrvalue, attrlen);
	FUNC2(app->pdu)->vah = vah;
	FUNC1(FUNC2(app->pdu)->attrvalue, firstattrvalue, attrlen);
	return 0;
}