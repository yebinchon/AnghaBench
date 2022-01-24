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
struct hpi_response {scalar_t__ error; } ;
struct hpi_message {int /*<<< orphan*/  adapter_index; int /*<<< orphan*/  obj_index; } ;
struct hpi_control_cache_single {int dummy; } ;
struct hpi_control_cache_info {int dummy; } ;
struct hpi_control_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hpi_control_cache*,struct hpi_control_cache_info**) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_control_cache_single*,struct hpi_message*,struct hpi_response*) ; 

void FUNC3(struct hpi_control_cache *p_cache,
	struct hpi_message *phm, struct hpi_response *phr)
{
	struct hpi_control_cache_single *pC;
	struct hpi_control_cache_info *pI;

	if (phr->error)
		return;

	if (!FUNC1(phm->obj_index, p_cache, &pI)) {
		FUNC0(VERBOSE,
			"HPICMN find_control() failed for adap %d\n",
			phm->adapter_index);
		return;
	}

	/* pC is the default cached control strucure.
	   May be cast to something else in the following switch statement.
	 */
	pC = (struct hpi_control_cache_single *)pI;

	FUNC2(pC, phm, phr);
}