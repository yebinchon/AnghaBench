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
struct skl_dsp_ops {int id; } ;

/* Variables and functions */
 int FUNC0 (struct skl_dsp_ops const*) ; 
 struct skl_dsp_ops const* dsp_ops ; 

const struct skl_dsp_ops *FUNC1(int pci_id)
{
	int i;

	for (i = 0; i < FUNC0(dsp_ops); i++) {
		if (dsp_ops[i].id == pci_id)
			return &dsp_ops[i];
	}

	return NULL;
}