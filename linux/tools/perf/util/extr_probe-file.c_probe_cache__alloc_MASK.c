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
struct probe_cache {int /*<<< orphan*/  fd; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct probe_cache* FUNC1 (int) ; 

__attribute__((used)) static struct probe_cache *FUNC2(void)
{
	struct probe_cache *pcache = FUNC1(sizeof(*pcache));

	if (pcache) {
		FUNC0(&pcache->entries);
		pcache->fd = -EINVAL;
	}
	return pcache;
}