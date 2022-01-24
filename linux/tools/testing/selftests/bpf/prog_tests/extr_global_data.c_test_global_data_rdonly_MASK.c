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
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  value_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int ENOMEM ; 
 scalar_t__ EPERM ; 
 TYPE_1__* FUNC2 (struct bpf_map*) ; 
 int FUNC3 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_map*) ; 
 int FUNC5 (int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bpf_map* FUNC6 (struct bpf_object*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct bpf_object *obj, __u32 duration)
{
	int err = -ENOMEM, map_fd, zero = 0;
	struct bpf_map *map;
	__u8 *buff;

	map = FUNC6(obj, "test_glo.rodata");
	if (FUNC1(!map || !FUNC4(map)))
		return;

	map_fd = FUNC3(map);
	if (FUNC1(map_fd < 0))
		return;

	buff = FUNC8(FUNC2(map)->value_size);
	if (buff)
		err = FUNC5(map_fd, &zero, buff, 0);
	FUNC7(buff);
	FUNC0(!err || errno != EPERM, "test .rodata read-only map",
	      "err %d errno %d\n", err, errno);
}