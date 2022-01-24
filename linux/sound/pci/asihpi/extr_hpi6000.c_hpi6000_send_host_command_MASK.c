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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct hpi_hw_obj {struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int /*<<< orphan*/  prHPI_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  H6WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ TIMEOUT ; 
 scalar_t__ FUNC1 (struct hpi_adapter_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dsp_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsp_obj*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static short FUNC5(struct hpi_adapter_obj *pao,
	u16 dsp_index, u32 host_cmd)
{
	struct hpi_hw_obj *phw = pao->priv;
	struct dsp_obj *pdo = &phw->ado[dsp_index];
	u32 timeout = TIMEOUT;

	/* set command */
	do {
		FUNC3(pdo, FUNC0(host_cmd), host_cmd);
		/* flush the FIFO */
		FUNC2(pdo, FUNC0(host_cmd));
	} while (FUNC1(pao, H6WRITE) && --timeout);

	/* reset the interrupt bit */
	FUNC4(0x00040004, pdo->prHPI_control);

	if (timeout)
		return 0;
	else
		return 1;
}