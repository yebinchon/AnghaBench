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
struct orangefs_bufmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_BUFMAP_DEBUG ; 
 struct orangefs_bufmap* __orangefs_bufmap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  readdir_map ; 
 int /*<<< orphan*/  rw_map ; 

void FUNC2(void)
{
	struct orangefs_bufmap *bufmap = __orangefs_bufmap;
	if (!bufmap)
		return;
	FUNC0(GOSSIP_BUFMAP_DEBUG, "orangefs_bufmap_finalize: called\n");
	FUNC1(&rw_map);
	FUNC1(&readdir_map);
	FUNC0(GOSSIP_BUFMAP_DEBUG,
		     "orangefs_bufmap_finalize: exiting normally\n");
}