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
struct ceph_hobject_id {struct ceph_hobject_id* nspace; struct ceph_hobject_id* oid; struct ceph_hobject_id* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_hobject_id*) ; 

__attribute__((used)) static void FUNC1(struct ceph_hobject_id *hoid)
{
	if (hoid) {
		FUNC0(hoid->key);
		FUNC0(hoid->oid);
		FUNC0(hoid->nspace);
		FUNC0(hoid);
	}
}