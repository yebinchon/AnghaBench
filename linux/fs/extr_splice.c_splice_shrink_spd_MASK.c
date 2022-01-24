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
struct splice_pipe_desc {scalar_t__ nr_pages_max; int /*<<< orphan*/  partial; int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 scalar_t__ PIPE_DEF_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct splice_pipe_desc *spd)
{
	if (spd->nr_pages_max <= PIPE_DEF_BUFFERS)
		return;

	FUNC0(spd->pages);
	FUNC0(spd->partial);
}