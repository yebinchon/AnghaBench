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
struct hpi_hw_obj {scalar_t__ dw2040_HPICSR; int /*<<< orphan*/  p_cache; } ;
struct hpi_adapter_obj {scalar_t__ has_control_cache; struct hpi_hw_obj* priv; } ;

/* Variables and functions */
 scalar_t__ HPI_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_hw_obj*) ; 

__attribute__((used)) static void FUNC3(struct hpi_adapter_obj *pao)
{
	struct hpi_hw_obj *phw = pao->priv;

	if (pao->has_control_cache)
		FUNC0(phw->p_cache);

	/* reset DSPs on adapter */
	FUNC1(0x0003000F, phw->dw2040_HPICSR + HPI_RESET);

	FUNC2(phw);
}