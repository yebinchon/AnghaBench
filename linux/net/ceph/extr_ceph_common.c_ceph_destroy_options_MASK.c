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
struct ceph_options {struct ceph_options* mon_addr; struct ceph_options* key; struct ceph_options* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_options*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_options*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_options*) ; 

void FUNC3(struct ceph_options *opt)
{
	FUNC1("destroy_options %p\n", opt);
	FUNC2(opt->name);
	if (opt->key) {
		FUNC0(opt->key);
		FUNC2(opt->key);
	}
	FUNC2(opt->mon_addr);
	FUNC2(opt);
}