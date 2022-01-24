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
struct hpi_message {int dummy; } ;
struct hpi_hw_obj {int /*<<< orphan*/  prHDCR; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  C6205_BAR0_TIMER1_CTL ; 
 int /*<<< orphan*/  C6205_HDCR_WARMRESET ; 
 scalar_t__ HPI_ERROR_INVALID_OBJ_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct hpi_adapter_obj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_adapter_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_adapter_obj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hpi_adapter_obj *pao,
	struct hpi_message *phm, struct hpi_response *phr)
{
	struct hpi_hw_obj *phw;

	if (!pao) {
		phr->error = HPI_ERROR_INVALID_OBJ_INDEX;
		return;
	}
	phw = pao->priv;
	/* reset adapter h/w */
	/* Reset C6713 #1 */
	FUNC0(pao, 0, C6205_BAR0_TIMER1_CTL, 0);
	/* reset C6205 */
	FUNC3(C6205_HDCR_WARMRESET, phw->prHDCR);

	FUNC1(pao);
	FUNC2(pao);
	phr->error = 0;
}