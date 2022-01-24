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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ POINTER_VALUE ; 
 int TEST_DATA_LEN ; 
 int FUNC0 (int,int,void*,size_t,int /*<<< orphan*/ *,int*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int fd_prog, bool unpriv, uint32_t expected_val,
			    void *data, size_t size_data)
{
	__u8 tmp[TEST_DATA_LEN << 2];
	__u32 size_tmp = sizeof(tmp);
	uint32_t retval;
	int err;

	if (unpriv)
		FUNC2(true);
	err = FUNC0(fd_prog, 1, data, size_data,
				tmp, &size_tmp, &retval, NULL);
	if (unpriv)
		FUNC2(false);
	if (err && errno != 524/*ENOTSUPP*/ && errno != EPERM) {
		FUNC1("Unexpected bpf_prog_test_run error ");
		return err;
	}
	if (!err && retval != expected_val &&
	    expected_val != POINTER_VALUE) {
		FUNC1("FAIL retval %d != %d ", retval, expected_val);
		return 1;
	}

	return 0;
}