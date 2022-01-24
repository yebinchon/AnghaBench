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
struct ceph_osd_backoff {int /*<<< orphan*/  id_node; int /*<<< orphan*/  spg_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ceph_osd_backoff* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ceph_osd_backoff *FUNC2(void)
{
	struct ceph_osd_backoff *backoff;

	backoff = FUNC1(sizeof(*backoff), GFP_NOIO);
	if (!backoff)
		return NULL;

	FUNC0(&backoff->spg_node);
	FUNC0(&backoff->id_node);
	return backoff;
}