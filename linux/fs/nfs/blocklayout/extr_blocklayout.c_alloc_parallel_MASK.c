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
struct parallel_io {int /*<<< orphan*/  refcnt; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct parallel_io* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct parallel_io *FUNC2(void *data)
{
	struct parallel_io *rv;

	rv  = FUNC0(sizeof(*rv), GFP_NOFS);
	if (rv) {
		rv->data = data;
		FUNC1(&rv->refcnt);
	}
	return rv;
}