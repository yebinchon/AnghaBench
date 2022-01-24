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
struct p9_fcall {int /*<<< orphan*/  sdata; scalar_t__ cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct p9_fcall *fc)
{
	/* sdata can be NULL for interrupted requests in trans_rdma,
	 * and kmem_cache_free does not do NULL-check for us
	 */
	if (FUNC2(!fc->sdata))
		return;

	if (fc->cache)
		FUNC1(fc->cache, fc->sdata);
	else
		FUNC0(fc->sdata);
}