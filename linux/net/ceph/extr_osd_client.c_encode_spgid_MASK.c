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
struct ceph_spg {int /*<<< orphan*/  shard; int /*<<< orphan*/  pgid; } ;

/* Variables and functions */
 scalar_t__ CEPH_PGID_ENCODING_LEN ; 
 int /*<<< orphan*/  FUNC0 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void **p, const struct ceph_spg *spgid)
{
	FUNC1(p, 1, 1, CEPH_PGID_ENCODING_LEN + 1);
	FUNC2(p, &spgid->pgid);
	FUNC0(p, spgid->shard);
}