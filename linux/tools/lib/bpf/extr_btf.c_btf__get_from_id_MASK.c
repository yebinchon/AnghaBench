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
struct btf {int dummy; } ;
struct bpf_btf_info {int btf_size; void* btf; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  btf_info ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btf*) ; 
 int FUNC1 (struct btf*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,struct bpf_btf_info*,int*) ; 
 struct btf* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (void*) ; 
 void* FUNC10 (void*,int) ; 

int FUNC11(__u32 id, struct btf **btf)
{
	struct bpf_btf_info btf_info = { 0 };
	__u32 len = sizeof(btf_info);
	__u32 last_size;
	int btf_fd;
	void *ptr;
	int err;

	err = 0;
	*btf = NULL;
	btf_fd = FUNC2(id);
	if (btf_fd < 0)
		return 0;

	/* we won't know btf_size until we call bpf_obj_get_info_by_fd(). so
	 * let's start with a sane default - 4KiB here - and resize it only if
	 * bpf_obj_get_info_by_fd() needs a bigger buffer.
	 */
	btf_info.btf_size = 4096;
	last_size = btf_info.btf_size;
	ptr = FUNC7(last_size);
	if (!ptr) {
		err = -ENOMEM;
		goto exit_free;
	}

	FUNC8(ptr, 0, last_size);
	btf_info.btf = FUNC9(ptr);
	err = FUNC3(btf_fd, &btf_info, &len);

	if (!err && btf_info.btf_size > last_size) {
		void *temp_ptr;

		last_size = btf_info.btf_size;
		temp_ptr = FUNC10(ptr, last_size);
		if (!temp_ptr) {
			err = -ENOMEM;
			goto exit_free;
		}
		ptr = temp_ptr;
		FUNC8(ptr, 0, last_size);
		btf_info.btf = FUNC9(ptr);
		err = FUNC3(btf_fd, &btf_info, &len);
	}

	if (err || btf_info.btf_size > last_size) {
		err = errno;
		goto exit_free;
	}

	*btf = FUNC4((__u8 *)(long)btf_info.btf, btf_info.btf_size);
	if (FUNC0(*btf)) {
		err = FUNC1(*btf);
		*btf = NULL;
	}

exit_free:
	FUNC5(btf_fd);
	FUNC6(ptr);

	return err;
}