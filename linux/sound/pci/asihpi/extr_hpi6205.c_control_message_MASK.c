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
struct hpi_response {int /*<<< orphan*/  error; } ;
struct TYPE_3__ {int /*<<< orphan*/  attribute; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct hpi_message {int function; TYPE_2__ u; } ;
struct hpi_hw_obj {int /*<<< orphan*/  p_cache; } ;
struct hpi_adapter_obj {int /*<<< orphan*/  has_control_cache; struct hpi_hw_obj* priv; } ;

/* Variables and functions */
#define  HPI_CONTROL_GET_INFO 130 
#define  HPI_CONTROL_GET_STATE 129 
#define  HPI_CONTROL_SET_STATE 128 
 int /*<<< orphan*/  HPI_ERROR_CONTROL_CACHING ; 
 int /*<<< orphan*/  HPI_ERROR_INVALID_FUNC ; 
 int /*<<< orphan*/  HPI_METER_PEAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct hpi_adapter_obj *pao,
	struct hpi_message *phm, struct hpi_response *phr)
{

	struct hpi_hw_obj *phw = pao->priv;
	u16 pending_cache_error = 0;

	switch (phm->function) {
	case HPI_CONTROL_GET_STATE:
		if (pao->has_control_cache) {
			FUNC3();	/* make sure we see updates DMAed from DSP */
			if (FUNC0(phw->p_cache, phm, phr)) {
				break;
			} else if (phm->u.c.attribute == HPI_METER_PEAK) {
				pending_cache_error =
					HPI_ERROR_CONTROL_CACHING;
			}
		}
		FUNC2(pao, phm, phr);
		if (pending_cache_error && !phr->error)
			phr->error = pending_cache_error;
		break;
	case HPI_CONTROL_GET_INFO:
		FUNC2(pao, phm, phr);
		break;
	case HPI_CONTROL_SET_STATE:
		FUNC2(pao, phm, phr);
		if (pao->has_control_cache)
			FUNC1(phw->p_cache, phm,
				phr);
		break;
	default:
		phr->error = HPI_ERROR_INVALID_FUNC;
		break;
	}
}