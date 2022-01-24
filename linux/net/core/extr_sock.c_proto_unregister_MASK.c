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
struct proto {TYPE_1__* twsk_prot; int /*<<< orphan*/  rsk_prot; int /*<<< orphan*/ * slab; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/ * twsk_slab; int /*<<< orphan*/  twsk_slab_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proto_list_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct proto*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct proto *prot)
{
	FUNC3(&proto_list_mutex);
	FUNC5(prot);
	FUNC2(&prot->node);
	FUNC4(&proto_list_mutex);

	FUNC1(prot->slab);
	prot->slab = NULL;

	FUNC6(prot->rsk_prot);

	if (prot->twsk_prot != NULL && prot->twsk_prot->twsk_slab != NULL) {
		FUNC1(prot->twsk_prot->twsk_slab);
		FUNC0(prot->twsk_prot->twsk_slab_name);
		prot->twsk_prot->twsk_slab = NULL;
	}
}