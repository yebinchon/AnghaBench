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
struct TYPE_2__ {int rc; int attach_type; } ;
struct sec_name_test {int /*<<< orphan*/  sec_name; TYPE_1__ expected_attach; } ;
typedef  enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct sec_name_test *test)
{
	enum bpf_attach_type attach_type;
	int rc;

	rc = FUNC0(test->sec_name, &attach_type);

	if (rc != test->expected_attach.rc) {
		FUNC1("attach: unexpected rc=%d for %s", rc, test->sec_name);
		return -1;
	}

	if (rc)
		return 0;

	if (attach_type != test->expected_attach.attach_type) {
		FUNC1("attach: unexpected attach_type=%d for %s", attach_type,
		      test->sec_name);
		return -1;
	}

	return 0;
}