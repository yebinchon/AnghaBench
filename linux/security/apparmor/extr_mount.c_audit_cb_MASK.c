#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; scalar_t__ flags; scalar_t__ trans; scalar_t__ src_name; scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mnt; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct audit_buffer *ab, void *va)
{
	struct common_audit_data *sa = va;

	if (FUNC0(sa)->mnt.type) {
		FUNC1(ab, " fstype=");
		FUNC2(ab, FUNC0(sa)->mnt.type);
	}
	if (FUNC0(sa)->mnt.src_name) {
		FUNC1(ab, " srcname=");
		FUNC2(ab, FUNC0(sa)->mnt.src_name);
	}
	if (FUNC0(sa)->mnt.trans) {
		FUNC1(ab, " trans=");
		FUNC2(ab, FUNC0(sa)->mnt.trans);
	}
	if (FUNC0(sa)->mnt.flags) {
		FUNC1(ab, " flags=\"");
		FUNC3(ab, FUNC0(sa)->mnt.flags);
		FUNC1(ab, "\"");
	}
	if (FUNC0(sa)->mnt.data) {
		FUNC1(ab, " options=");
		FUNC2(ab, FUNC0(sa)->mnt.data);
	}
}