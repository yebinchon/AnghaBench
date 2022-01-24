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
struct bpf_object {int /*<<< orphan*/  kern_version; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  kver ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int LIBBPF_ERRNO__FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bpf_object *obj, void *data, size_t size)
{
	__u32 kver;

	if (size != sizeof(kver)) {
		FUNC2("invalid kver section in %s\n", obj->path);
		return -LIBBPF_ERRNO__FORMAT;
	}
	FUNC0(&kver, data, sizeof(kver));
	obj->kern_version = kver;
	FUNC1("kernel version of %s is %x\n", obj->path, obj->kern_version);
	return 0;
}