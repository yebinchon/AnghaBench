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
struct hpi_hw_obj {scalar_t__* outstream_host_buffer_size; int /*<<< orphan*/ * outstream_host_buffers; scalar_t__* instream_host_buffer_size; int /*<<< orphan*/ * instream_host_buffers; int /*<<< orphan*/ * p_interface_buffer; int /*<<< orphan*/  h_locked_mem; int /*<<< orphan*/  p_cache; int /*<<< orphan*/  h_control_cache; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;

/* Variables and functions */
 int HPI_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hpi_hw_obj*) ; 

__attribute__((used)) static void FUNC4(struct hpi_adapter_obj *pao)
{
	struct hpi_hw_obj *phw = pao->priv;
	int i;

	if (FUNC2(&phw->h_control_cache)) {
		FUNC1(&phw->h_control_cache);
		FUNC0(phw->p_cache);
	}

	if (FUNC2(&phw->h_locked_mem)) {
		FUNC1(&phw->h_locked_mem);
		phw->p_interface_buffer = NULL;
	}

	for (i = 0; i < HPI_MAX_STREAMS; i++)
		if (FUNC2(&phw->instream_host_buffers[i])) {
			FUNC1(&phw->instream_host_buffers[i]);
			/*?phw->InStreamHostBuffers[i] = NULL; */
			phw->instream_host_buffer_size[i] = 0;
		}

	for (i = 0; i < HPI_MAX_STREAMS; i++)
		if (FUNC2(&phw->outstream_host_buffers[i])) {
			FUNC1(&phw->outstream_host_buffers
				[i]);
			phw->outstream_host_buffer_size[i] = 0;
		}
	FUNC3(phw);
}