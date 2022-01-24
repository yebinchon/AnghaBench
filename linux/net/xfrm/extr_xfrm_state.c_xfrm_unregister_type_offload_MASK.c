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
struct xfrm_type_offload {int proto; } ;
struct xfrm_state_afinfo {struct xfrm_type_offload const* type_offload_esp; } ;

/* Variables and functions */
#define  IPPROTO_ESP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfrm_state_afinfo* FUNC3 (unsigned short) ; 

void FUNC4(const struct xfrm_type_offload *type,
				  unsigned short family)
{
	struct xfrm_state_afinfo *afinfo = FUNC3(family);

	if (FUNC2(afinfo == NULL))
		return;

	switch (type->proto) {
	case IPPROTO_ESP:
		FUNC0(afinfo->type_offload_esp != type);
		afinfo->type_offload_esp = NULL;
		break;
	default:
		FUNC0(1);
		break;
	}
	FUNC1();
}