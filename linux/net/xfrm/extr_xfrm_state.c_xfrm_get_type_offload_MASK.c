#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct xfrm_type_offload {int /*<<< orphan*/  owner; } ;
struct xfrm_state_afinfo {struct xfrm_type_offload* type_offload_esp; } ;

/* Variables and functions */
#define  IPPROTO_ESP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct xfrm_state_afinfo* FUNC4 (unsigned short) ; 

__attribute__((used)) static const struct xfrm_type_offload *
FUNC5(u8 proto, unsigned short family, bool try_load)
{
	const struct xfrm_type_offload *type = NULL;
	struct xfrm_state_afinfo *afinfo;

retry:
	afinfo = FUNC4(family);
	if (FUNC3(afinfo == NULL))
		return NULL;

	switch (proto) {
	case IPPROTO_ESP:
		type = afinfo->type_offload_esp;
		break;
	default:
		break;
	}

	if ((type && !FUNC2(type->owner)))
		type = NULL;

	FUNC0();

	if (!type && try_load) {
		FUNC1("xfrm-offload-%d-%d", family, proto);
		try_load = false;
		goto retry;
	}

	return type;
}