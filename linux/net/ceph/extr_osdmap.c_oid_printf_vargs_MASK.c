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
typedef  int /*<<< orphan*/  va_list ;
struct ceph_object_id {int name_len; int /*<<< orphan*/  inline_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_object_id*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct ceph_object_id *oid, const char *fmt, va_list ap)
{
	int len;

	FUNC0(!FUNC1(oid));

	len = FUNC2(oid->inline_name, sizeof(oid->inline_name), fmt, ap);
	if (len >= sizeof(oid->inline_name))
		return len;

	oid->name_len = len;
	return 0;
}