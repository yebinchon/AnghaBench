#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* ci_array; } ;
struct ocfs2_caching_info {size_t ci_num_cached; TYPE_1__ ci_cache; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t OCFS2_CACHE_INFO_MAX_ARRAY ; 
 scalar_t__ FUNC1 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,unsigned long long,size_t) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_caching_info *ci,
				     sector_t block)
{
	FUNC0(ci->ci_num_cached >= OCFS2_CACHE_INFO_MAX_ARRAY);

	FUNC2(
		(unsigned long long)FUNC1(ci),
		(unsigned long long)block, ci->ci_num_cached);

	ci->ci_cache.ci_array[ci->ci_num_cached] = block;
	ci->ci_num_cached++;
}