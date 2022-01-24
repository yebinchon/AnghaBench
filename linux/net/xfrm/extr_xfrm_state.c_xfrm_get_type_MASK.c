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
struct xfrm_type {int /*<<< orphan*/  owner; } ;
struct xfrm_state_afinfo {struct xfrm_type* type_ipip6; struct xfrm_type* type_routing; struct xfrm_type* type_dstopts; struct xfrm_type* type_ipip; struct xfrm_type* type_esp; struct xfrm_type* type_ah; struct xfrm_type* type_comp; } ;

/* Variables and functions */
#define  IPPROTO_AH 134 
#define  IPPROTO_COMP 133 
#define  IPPROTO_DSTOPTS 132 
#define  IPPROTO_ESP 131 
#define  IPPROTO_IPIP 130 
#define  IPPROTO_IPV6 129 
#define  IPPROTO_ROUTING 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct xfrm_state_afinfo* FUNC4 (unsigned short) ; 

__attribute__((used)) static const struct xfrm_type *FUNC5(u8 proto, unsigned short family)
{
	const struct xfrm_type *type = NULL;
	struct xfrm_state_afinfo *afinfo;
	int modload_attempted = 0;

retry:
	afinfo = FUNC4(family);
	if (FUNC3(afinfo == NULL))
		return NULL;

	switch (proto) {
	case IPPROTO_COMP:
		type = afinfo->type_comp;
		break;
	case IPPROTO_AH:
		type = afinfo->type_ah;
		break;
	case IPPROTO_ESP:
		type = afinfo->type_esp;
		break;
	case IPPROTO_IPIP:
		type = afinfo->type_ipip;
		break;
	case IPPROTO_DSTOPTS:
		type = afinfo->type_dstopts;
		break;
	case IPPROTO_ROUTING:
		type = afinfo->type_routing;
		break;
	case IPPROTO_IPV6:
		type = afinfo->type_ipip6;
		break;
	default:
		break;
	}

	if (FUNC3(type && !FUNC2(type->owner)))
		type = NULL;

	FUNC0();

	if (!type && !modload_attempted) {
		FUNC1("xfrm-type-%d-%d", family, proto);
		modload_attempted = 1;
		goto retry;
	}

	return type;
}