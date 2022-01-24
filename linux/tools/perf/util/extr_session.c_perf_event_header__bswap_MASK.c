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
struct perf_event_header {void* size; void* misc; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct perf_event_header *hdr)
{
	hdr->type = FUNC1(hdr->type);
	hdr->misc = FUNC0(hdr->misc);
	hdr->size = FUNC0(hdr->size);
}